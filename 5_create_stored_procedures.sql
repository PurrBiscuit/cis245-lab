/* drop any existing stored procedures so they can be recreated 
with the create stored procedure statements below */

IF EXISTS(SELECT 1 FROM sys.objects WHERE type='P' AND name='ACTOR_EPISODE_REPORT')
DROP PROCEDURE ACTOR_EPISODE_REPORT;
GO

IF EXISTS(SELECT 1 FROM sys.objects WHERE type='P' AND name='SHOWS_REPORT')
DROP PROCEDURE SHOWS_REPORT;
GO

IF EXISTS(SELECT 1 FROM sys.objects WHERE type='P' AND name='REMOVE_ACTOR')
DROP PROCEDURE REMOVE_ACTOR;
GO

IF EXISTS(SELECT 1 FROM sys.objects WHERE type='P' AND name='UPDATE_SHOW_ID')
DROP PROCEDURE UPDATE_SHOW_ID;
GO

IF EXISTS(SELECT 1 FROM sys.objects WHERE type='P' AND name='FOREIGN_KEY_REPORT')
DROP PROCEDURE FOREIGN_KEY_REPORT;
GO

/* create a stored procedure which will create a report table
for listing the number of episodes an actor has been in */

CREATE PROCEDURE ACTOR_EPISODE_REPORT
AS
  IF OBJECT_ID('dbo.REPORT_ACTOR_EPISODES', 'U') IS NOT NULL
  DROP TABLE dbo.REPORT_ACTOR_EPISODES;

  PRINT 'Recreating the REPORT_ACTOR_EPISODES table'

  CREATE TABLE REPORT_ACTOR_EPISODES(
	PersonID			uniqueidentifier 	NOT NULL,
	PersonFirstName		varchar(100)	 	NOT NULL,
	PersonLastName		varchar(100)		NULL,
	EpisodeCount 		int 				NOT NULL,
	CONSTRAINT PK_ActorEpisodeReportPersonID PRIMARY KEY(PersonID)
  );

  PRINT 'Populating the REPORT_ACTOR_EPISODES table with report data'

  INSERT INTO REPORT_ACTOR_EPISODES
  SELECT p.PersonID, p.PersonFirstName, p.PersonLastName, COUNT(p.PersonID)
  FROM PEOPLE as p JOIN ROLES as r ON (p.PersonID = r.PersonID)
  JOIN EPISODE_ROLES as e ON (r.RoleID = e.RoleID)
  GROUP BY p.PersonID, p.PersonFirstName, p.PersonLastName;
GO

CREATE PROCEDURE SHOWS_REPORT
AS
  SET ANSI_WARNINGS OFF
 
  IF OBJECT_ID('dbo.REPORT_SHOWS', 'U') IS NOT NULL
  DROP TABLE dbo.REPORT_SHOWS;

  PRINT 'Recreating the REPORT_SHOWS table'

  CREATE TABLE REPORT_SHOWS(
	ShowID      			uniqueidentifier 	NOT NULL,
	ShowName		      varchar(150)	 	  NOT NULL,
	CountryOfOrigin		varchar(2)		    NOT NULL,
	OriginalLanguage 	varchar(3) 				NOT NULL,
	NoSeasons         int               NOT NULL,
	NoEpisodes        int               NOT NULL,
	AwardsNominated   int               NOT NULL,
	AvgEpisodeRunTime int               NOT NULL,
	CONSTRAINT PK_ReportShowsShowID PRIMARY KEY(ShowID)
  );

  PRINT 'Populating the REPORT_SHOWS table with report data'

  INSERT INTO REPORT_SHOWS
	SELECT s.ShowID, s.ShowName, s.CountryOfOrigin, s.OriginalLanguage, COUNT(DISTINCT n.SeasonID) as NoSeasons,
	COUNT(DISTINCT e.EpisodeID) as NoEpisodes, COUNT(DISTINCT a.AwardCategoryID) as AwardsNominated,
	AVG(e.RunningTimeInMinutes) as AvgEpisodeRunTime
	FROM SHOWS as s
	JOIN SEASONS as n ON (s.ShowID = n.ShowID)
	LEFT JOIN AWARD_CATEGORY_RESULTS as a ON (a.ShowID = s.ShowID)
	LEFT JOIN EPISODES as e ON (e.SeasonID = n.SeasonID)
	GROUP BY s.ShowID, s.ShowName, s.CountryOfOrigin, s.OriginalLanguage;
GO

/* create a stored procedure which will remove an actor from
the database completely based on the person id passed in */

CREATE PROCEDURE REMOVE_ACTOR
   @PersonID uniqueidentifier
AS
	DECLARE @PersonFirstName varchar(100);
	DECLARE @PersonLastName varchar(100);
	SELECT @PersonFirstName = (SELECT PersonFirstName FROM PEOPLE WHERE PersonID=@PersonID);
	SELECT @PersonLastName = (SELECT PersonLastName FROM PEOPLE WHERE PersonID=@PersonID);

	SELECT @PersonID = (SELECT TOP 1 PersonID FROM ROLES);
	PRINT 'Removing ' + @PersonFirstName + ' ' + @PersonLastName + ' from the EPISODE_ROLES table'
	DELETE FROM EPISODE_ROLES
	WHERE RoleID IN (
		SELECT RoleID FROM ROLES WHERE PersonID=@PersonID
	);

	PRINT 'Removing ' + @PersonFirstName + ' ' + @PersonLastName + ' from the AWARD_CATEGORY_RESULTS table'
	UPDATE AWARD_CATEGORY_RESULTS 
	SET PersonID=NULL
	WHERE PersonID=@PersonID;

	PRINT 'Removing ' + @PersonFirstName + ' ' + @PersonLastName + ' from the ROLES table'
	DELETE FROM ROLES 
	WHERE PersonID=@PersonID;
	
	PRINT 'Removing ' + @PersonFirstName + ' ' + @PersonLastName + ' from the PEOPLE table'
	DELETE FROM PEOPLE 
	WHERE PersonID=@PersonID;
GO

/* create a stored procedure that will take a show id, copy all data from that id
to a row with a new id, update all foreign keys that reference the old id to the new id
and finally delete the old id record from the SHOWS database */

CREATE PROCEDURE UPDATE_SHOW_ID
  @OldShowId uniqueidentifier
AS
	DECLARE @NewShowID uniqueidentifier;
	SELECT @NewShowID=NewID();
	PRINT 'Inserting the new show id of ' + CONVERT(varchar(64), @NewShowId) + ' into the SHOWS table.'
	INSERT INTO SHOWS
	SELECT @NewShowID, ShowName, CountryOfOrigin, OriginalLanguage, OriginalNetworkID FROM SHOWS WHERE ShowID=@OldShowId;
  PRINT ''

	DECLARE @Count int;
	SELECT @Count=(SELECT COUNT(ShowID) FROM PRODUCTION_COMPANY_SHOWS WHERE ShowID=@OldShowId);
	IF (@Count > 0)
	BEGIN
		PRINT 'Found ' + CONVERT(varchar(10), @Count) + ' record in the PRODUCTION_COMPANY_SHOWS table for ' + CONVERT(varchar(64), @OldShowId) + '.  Updating to the new ID of ' + CONVERT(varchar(64), @NewShowId) + '.'
		UPDATE PRODUCTION_COMPANY_SHOWS SET ShowID=@NewShowID WHERE ShowID=@OldShowId;
	END

	ELSE
	BEGIN
		PRINT 'No records in the PRODUCTION_COMPANY_SHOWS table found for ' + CONVERT(varchar(64), @OldShowId) + '.'
	END
	PRINT ''

	SELECT @Count=(SELECT COUNT(ShowID) FROM SHOW_GENRES WHERE ShowID=@OldShowId);
	IF (@Count > 0)
	BEGIN
		PRINT 'Found ' + CONVERT(varchar(10), @Count) + ' record in the SHOW_GENRES table for ' + CONVERT(varchar(64), @OldShowId) + '.  Updating to the new ID of ' + CONVERT(varchar(64), @NewShowId) + '.'
		UPDATE SHOW_GENRES SET ShowID=@NewShowID WHERE ShowID=@OldShowId;
	END

	ELSE
	BEGIN
		PRINT 'No records in the SHOW_GENRES table found for ' + CONVERT(varchar(64), @OldShowId) + '.'
	END
	PRINT ''

	SELECT @Count=(SELECT COUNT(ShowID) FROM SEASONS WHERE ShowID=@OldShowId);
	IF (@Count > 0)
	BEGIN
		PRINT 'Found ' + CONVERT(varchar(10), @Count) + ' record in the SEASONS table for ' + CONVERT(varchar(64), @OldShowId) + '.  Updating to the new ID of ' + CONVERT(varchar(64), @NewShowId) + '.'
		UPDATE SEASONS SET ShowID=@NewShowID WHERE ShowID=@OldShowId;
	END

	ELSE
	BEGIN
		PRINT 'No records in the SEASONS table found for ' + CONVERT(varchar(64), @OldShowId) + '.'
	END
	PRINT ''

	SELECT @Count=(SELECT COUNT(ShowID) FROM AWARD_CATEGORY_RESULTS WHERE ShowID=@OldShowId);
	IF (@Count > 0)
	BEGIN
		PRINT 'Found ' + CONVERT(varchar(10), @Count) + ' record in the AWARD_CATEGORY_RESULTS table for ' + CONVERT(varchar(64), @OldShowId) + '.  Updating to the new ID of ' + CONVERT(varchar(64), @NewShowId) + '.'
		UPDATE AWARD_CATEGORY_RESULTS SET ShowID=@NewShowID WHERE ShowID=@OldShowId;
	END

	ELSE
	BEGIN
		PRINT 'No records in the AWARD_CATEGORY_RESULTS table found for ' + CONVERT(varchar(64), @OldShowId) + '.'
	END
	PRINT ''

	PRINT 'Removing the old show id of ' + CONVERT(varchar(64), @OldShowId) + ' from the SHOWS table.'
	DELETE FROM SHOWS WHERE ShowID=@OldShowId;
GO

/* create a stored procedure which will run through all the user created tables
in the database and show all the foreign keys associated with each table */

CREATE PROCEDURE FOREIGN_KEY_REPORT
AS
	DECLARE @I int;
	SELECT @I=1;

	DECLARE @RowCount int;
	SELECT @RowCount=(SELECT COUNT(name) FROM sys.objects WHERE type='U');

	DECLARE @TotalFKCount int;
	SELECT @TotalFKCount=0;

	WHILE (@I <= @RowCount)
	BEGIN
		DECLARE @TableName sysname;
		SELECT @TableName=(SELECT name FROM
			(SELECT (ROW_NUMBER() OVER (ORDER BY name)) as row, name FROM sys.objects WHERE type='U') as tbl
		WHERE row=@I);

		DECLARE @ParentObjectID int;
		SELECT @ParentObjectID=(OBJECT_ID(N'dbo.' + @TableName));

		DECLARE @FKI int
		SELECT @FKI=1

		DECLARE @FKCount int;
		SELECT @FKCount=(SELECT COUNT(name) FROM sys.objects WHERE type='F' AND parent_object_id=@ParentObjectID);

		IF (@FKCount = 0)
		BEGIN
			PRINT 'No foreign keys found for the ' + @TableName + ' table.'
		END

		ELSE
		BEGIN
			DECLARE @Plural varchar(1);
			SELECT @Plural='';

			IF (@FKCount > 1)
			BEGIN
				SELECT @Plural='s';
			END
			PRINT 'The ' + @TableName + ' table has ' + CONVERT(varchar(50), @FKCount) + ' foreign key' + @Plural + ':';
		END

		WHILE (@FKI <= @FKCount)
		BEGIN
			DECLARE @FKName sysname;
			SELECT @FKName=(SELECT name FROM
				(SELECT (ROW_NUMBER() OVER (ORDER BY name)) as row, name FROM sys.objects WHERE type='F' AND parent_object_id=@ParentObjectID) as fk
			WHERE row=@FKI);
			PRINT ' - ' + @FKName;
			SELECT @FKI=@FKI+1;
		END

		PRINT '';
		SELECT @TotalFKCount = @TotalFKCount + @FKCount
		SELECT @I=@I+1;
	END

	PRINT '***************************'
	PRINT 'TOTAL FOREIGN KEYS = ' + CONVERT(varchar(50), @TotalFKCount)
	PRINT '***************************'
GO
