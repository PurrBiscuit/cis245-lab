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

IF OBJECT_ID('dbo.LOOKUP_COUNTRIES', 'U') IS NOT NULL
DROP TABLE dbo.LOOKUP_COUNTRIES;

CREATE TABLE LOOKUP_COUNTRIES(
	Country 		varchar(2) 		NOT NULL,
	CountryName 	varchar(100) 	NOT NULL,
	CONSTRAINT PK_Country PRIMARY KEY(Country)
);

IF OBJECT_ID('dbo.PRODUCTION_COMPANIES', 'U') IS NOT NULL
DROP TABLE dbo.PRODUCTION_COMPANIES;

CREATE TABLE PRODUCTION_COMPANIES(
	ProductionCompanyID 				uniqueidentifier 	NOT NULL,
	ProductionCompanyName				varchar(150)		NOT NULL,
	ProductionCompanyFounded			date 				NOT NULL,
	ProductionCompanySlogan				varchar(500)		NULL,
	ProductionCompanyHQStreetAddress1	varchar(250)		NOT NULL,
	ProductionCompanyHQStreetAddress2	varchar(250)		NULL,
	ProductionCompanyHQCity				varchar(100)		NOT NULL,
	ProductionCompanyHQStateCountyID	uniqueidentifier	NOT NULL,
	ProductionCompanyHQCountry			varchar(2)			NOT NULL,
	CONSTRAINT PK_ProductionCompanyID PRIMARY KEY(ProductionCompanyID)
);

IF OBJECT_ID('dbo.PRODUCTION_COMPANY_SHOWS', 'U') IS NOT NULL
DROP TABLE dbo.PRODUCTION_COMPANY_SHOWS;

CREATE TABLE PRODUCTION_COMPANY_SHOWS(
	ProductionCompanyID 	uniqueidentifier 	NOT NULL,
	ShowID 					uniqueidentifier 	NOT NULL,
	CONSTRAINT PK_ProductionCompanyShows PRIMARY KEY(ProductionCompanyID,ShowID)
);

IF OBJECT_ID('dbo.ROLES', 'U') IS NOT NULL
DROP TABLE dbo.ROLES;

CREATE TABLE ROLES(
	RoleID 			uniqueidentifier 	NOT NULL,
	RoleFirstName	varchar(100)		NOT NULL,
	RoleLastName	varchar(100)		NULL,
	PersonID 		uniqueidentifier	NOT NULL,
	CONSTRAINT PK_RoleID PRIMARY KEY(RoleID)
);

IF OBJECT_ID('dbo.EPISODE_WRITERS', 'U') IS NOT NULL
DROP TABLE dbo.EPISODE_WRITERS;

CREATE TABLE EPISODE_WRITERS(
	EpisodeID 	uniqueidentifier 	NOT NULL,
	PersonID 	uniqueidentifier 	NOT NULL,
	CONSTRAINT PK_EpisodeWriters PRIMARY KEY(EpisodeID,PersonID)
);
