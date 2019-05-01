/* drop any existing stored procedures so they can be recreated 
with the create stored procedure statements below */

IF EXISTS(SELECT 1 FROM sys.objects WHERE type='P' AND name='REMOVE_ACTOR')
DROP PROCEDURE REMOVE_ACTOR;
GO

IF EXISTS(SELECT 1 FROM sys.objects WHERE type='P' AND name='ACTOR_EPISODE_REPORT')
DROP PROCEDURE ACTOR_EPISODE_REPORT;
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