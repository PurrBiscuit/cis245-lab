/* The order of the DROP TABLE statements matters in this file;
this ensures that the child tables in the foreign key constraints
are dropped before the parents tables are. */

IF OBJECT_ID('dbo.LOOKUP_STATES_COUNTIES', 'U') IS NOT NULL
DROP TABLE dbo.LOOKUP_STATES_COUNTIES;

CREATE TABLE LOOKUP_STATES_COUNTIES(
	StateCountyID 			uniqueidentifier 	NOT NULL,
	StateCountyAbbr 		varchar(4) 			NOT NULL,
	StateCountyName 		varchar(150) 		NOT NULL,
	CONSTRAINT PK_StateCountyID PRIMARY KEY(StateCountyID)
);

IF OBJECT_ID('dbo.NETWORKS', 'U') IS NOT NULL
DROP TABLE dbo.NETWORKS;

CREATE TABLE NETWORKS(
	NetworkID 					uniqueidentifier 	NOT NULL,
	NetworkName					varchar(150)		NOT NULL,
	NetworkFounded				date				NOT NULL,
	NetworkSlogan				varchar(500)		NULL,
	NetworkHQStreetAddress1		varchar(250)		NOT NULL,
	NetworkHQStreetAddress2 	varchar(250)		NULL,
	NetworkHQCity				varchar(100)		NOT NULL,
	NetworkHQStateCountyID		uniqueidentifier	NOT NULL,
	NetworkHQCountry			varchar(2)			NOT NULL,
	CONSTRAINT PK_NetworkID PRIMARY KEY(NetworkID)
);

IF OBJECT_ID('dbo.PEOPLE', 'U') IS NOT NULL
DROP TABLE dbo.PEOPLE;

CREATE TABLE PEOPLE(
	PersonID 					uniqueidentifier 	NOT NULL,
	PersonFirstName				varchar(100)		NOT NULL,
	PersonLastName				varchar(100)		NOT NULL,
	PersonDateOfBirth			date 				NOT NULL,
	PersonDateOfDeath			date 				NULL,
	PersonBirthStateCountyID	uniqueidentifier 	NOT NULL,
	PersonBirthCountry			varchar(2)			NOT NULL,
	PersonWeightInPounds		smallint			NULL,
	PersonHeightInInches		tinyint				NULL,
	PersonGender				varchar(1)			NULL,
	CONSTRAINT PK_PersonID PRIMARY KEY(PersonID)
);

