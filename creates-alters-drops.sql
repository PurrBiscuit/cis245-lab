/* The order of the DROP TABLE statements matters in this file;
this ensures that the child tables in the foreign key constraints
are dropped before the parents tables are. */

IF OBJECT_ID('dbo.AWARD_CATEGORY_RESULTS', 'U') IS NOT NULL
DROP TABLE dbo.AWARD_CATEGORY_RESULTS;

CREATE TABLE AWARD_CATEGORY_RESULTS(
	AwardCategoryID 	uniqueidentifier 	NOT NULL,
	ShowID 				uniqueidentifier 	NOT NULL,
	PersonID 			uniqueidentifier	NULL,
	Result 				bit 				NOT NULL,
	ResultDate			date 				NOT NULL,
	CONSTRAINT PK_AwardCategoryResults PRIMARY KEY(AwardCategoryID,ShowID)
);

IF OBJECT_ID('dbo.AWARD_CATEGORIES', 'U') IS NOT NULL
DROP TABLE dbo.AWARD_CATEGORIES;

CREATE TABLE AWARD_CATEGORIES(
	AwardCategoryID 	uniqueidentifier 	NOT NULL,
	AwardCategoryName 	varchar(200)		NOT NULL,
	AwardID 			uniqueidentifier	NOT NULL,
	CONSTRAINT PK_AwardCategoryID PRIMARY KEY(AwardCategoryID)
);

IF OBJECT_ID('dbo.AWARDS', 'U') IS NOT NULL
DROP TABLE dbo.AWARDS;

CREATE TABLE AWARDS(
	AwardID 			uniqueidentifier 	NOT NULL,
	AwardName 			varchar(150)		NOT NULL,
	AwardFounded		date 				NOT NULL,
	AwardWebsite		varchar(250)		NULL,
	CONSTRAINT PK_AwardID PRIMARY KEY(AwardID)
);

IF OBJECT_ID('dbo.SHOW_GENRES', 'U') IS NOT NULL
DROP TABLE dbo.SHOW_GENRES;

CREATE TABLE SHOW_GENRES(
	GenreID 	uniqueidentifier 	NOT NULL,
	ShowID 		uniqueidentifier 	NOT NULL,
	CONSTRAINT PK_ShowGenres PRIMARY KEY(GenreID,ShowID)
);

IF OBJECT_ID('dbo.LOOKUP_GENRES', 'U') IS NOT NULL
DROP TABLE dbo.LOOKUP_GENRES;

CREATE TABLE LOOKUP_GENRES(
	GenreID 	uniqueidentifier 	NOT NULL,
	Genre 		varchar(200) 		NOT NULL,
	CONSTRAINT PK_GenreID PRIMARY KEY(GenreID)
);

IF OBJECT_ID('dbo.EPISODE_WRITERS', 'U') IS NOT NULL
DROP TABLE dbo.EPISODE_WRITERS;

CREATE TABLE EPISODE_WRITERS(
	EpisodeID 	uniqueidentifier 	NOT NULL,
	PersonID 	uniqueidentifier 	NOT NULL,
	CONSTRAINT PK_EpisodeWriters PRIMARY KEY(EpisodeID,PersonID)
);

IF OBJECT_ID('dbo.EPISODE_ROLES', 'U') IS NOT NULL
DROP TABLE dbo.EPISODE_ROLES;

CREATE TABLE EPISODE_ROLES(
	EpisodeID 	uniqueidentifier 	NOT NULL,
	RoleID 	 	uniqueidentifier 	NOT NULL,
	CONSTRAINT PK_EpisodeRoles PRIMARY KEY(EpisodeID,RoleID)
);

IF OBJECT_ID('dbo.EPISODES', 'U') IS NOT NULL
DROP TABLE dbo.EPISODES;

CREATE TABLE EPISODES(
	EpisodeID 				uniqueidentifier 	NOT NULL,
	SeasonID				uniqueidentifier	NOT NULL,
	EpisodeNumber			smallint			NOT NULL,
	EpisodeTitle			varchar(150)		NOT NULL,
	DirectedBy				uniqueidentifier	NOT NULL,
	OriginalAirDate			date 				NOT NULL,
	RunningTimeInMinutes	smallint			NOT NULL,
	CONSTRAINT PK_EpisodeID PRIMARY KEY(EpisodeID)
);

IF OBJECT_ID('dbo.SEASONS', 'U') IS NOT NULL
DROP TABLE dbo.SEASONS;

CREATE TABLE SEASONS(
	SeasonID 			uniqueidentifier 	NOT NULL,
	ShowID 				uniqueidentifier	NOT NULL,
	SeasonNumber		tinyint 			NOT NULL,
	FirstAiredDate		date 				NOT NULL,
	LastAiredDate		date 				NULL,
	NielsenRating 		smallint			NULL,
	NielsenRatingRank	tinyint				NULL,
	CONSTRAINT PK_SeasonID PRIMARY KEY(SeasonID)
);

IF OBJECT_ID('dbo.PRODUCTION_COMPANY_SHOWS', 'U') IS NOT NULL
DROP TABLE dbo.PRODUCTION_COMPANY_SHOWS;

CREATE TABLE PRODUCTION_COMPANY_SHOWS(
	ProductionCompanyID 	uniqueidentifier 	NOT NULL,
	ShowID 					uniqueidentifier 	NOT NULL,
	CONSTRAINT PK_ProductionCompanyShows PRIMARY KEY(ProductionCompanyID,ShowID)
);

IF OBJECT_ID('dbo.SHOWS', 'U') IS NOT NULL
DROP TABLE dbo.SHOWS;

CREATE TABLE SHOWS(
	ShowID 				uniqueidentifier 	NOT NULL,
	ShowName 			varchar(150)	 	NOT NULL,
	CountryOfOrigin 	varchar(2)			NOT NULL,
	OriginalLanguage	varchar(3)			NOT NULL,
	OriginalNetworkID 	uniqueidentifier	NOT NULL,
	CONSTRAINT PK_ShowID PRIMARY KEY(ShowID)
);

IF OBJECT_ID('dbo.LOOKUP_LANGUAGES', 'U') IS NOT NULL
DROP TABLE dbo.LOOKUP_LANGUAGES;

CREATE TABLE LOOKUP_LANGUAGES(
	LanguageISOCode 	varchar(3) 		NOT NULL,
	LanguageName 		varchar(100) 	NOT NULL,
	CONSTRAINT PK_LanguageISOCode PRIMARY KEY(LanguageISOCode)
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

IF OBJECT_ID('dbo.ROLES', 'U') IS NOT NULL
DROP TABLE dbo.ROLES;

CREATE TABLE ROLES(
	RoleID 			uniqueidentifier 	NOT NULL,
	RoleFirstName	varchar(100)		NOT NULL,
	RoleLastName	varchar(100)		NULL,
	PersonID 		uniqueidentifier	NOT NULL,
	CONSTRAINT PK_RoleID PRIMARY KEY(RoleID)
);

IF OBJECT_ID('dbo.PEOPLE', 'U') IS NOT NULL
DROP TABLE dbo.PEOPLE;

CREATE TABLE PEOPLE(
	PersonID 					uniqueidentifier 	NOT NULL,
	PersonFirstName				varchar(100)		NOT NULL,
	PersonLastName				varchar(100)		NOT NULL,
	PersonDateOfBirth			date 				NOT NULL,
	PersonDateOfDeath			date 				NULL,
	PersonBirthStateCountyID	uniqueidentifier 	NULL,
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

IF OBJECT_ID('dbo.LOOKUP_STATES_COUNTIES', 'U') IS NOT NULL
DROP TABLE dbo.LOOKUP_STATES_COUNTIES;

CREATE TABLE LOOKUP_STATES_COUNTIES(
	StateCountyID 			uniqueidentifier 	NOT NULL,
	StateCountyAbbr 		varchar(4) 			NOT NULL,
	StateCountyName 		varchar(150) 		NOT NULL,
	CONSTRAINT PK_StateCountyID PRIMARY KEY(StateCountyID)
);

ALTER TABLE NETWORKS
ADD CONSTRAINT FK_NetworkHQStateCountyID
FOREIGN KEY (NetworkHQStateCountyID) REFERENCES LOOKUP_STATES_COUNTIES(StateCountyID);

ALTER TABLE NETWORKS
ADD CONSTRAINT FK_NetworkHQCountry
FOREIGN KEY (NetworkHQCountry) REFERENCES LOOKUP_COUNTRIES(Country);

ALTER TABLE PEOPLE
ADD CONSTRAINT FK_PersonBirthStateCountyID
FOREIGN KEY (PersonBirthStateCountyID) REFERENCES LOOKUP_STATES_COUNTIES(StateCountyID);

ALTER TABLE PEOPLE
ADD CONSTRAINT FK_PersonBirthCountry
FOREIGN KEY (PersonBirthCountry) REFERENCES LOOKUP_COUNTRIES(Country);

ALTER TABLE PRODUCTION_COMPANIES
ADD CONSTRAINT FK_ProductCompanyHQStateCountyID
FOREIGN KEY (ProductionCompanyHQStateCountyID) REFERENCES LOOKUP_STATES_COUNTIES(StateCountyID);

ALTER TABLE PRODUCTION_COMPANIES
ADD CONSTRAINT FK_ProductionCompanyHQCountry
FOREIGN KEY (ProductionCompanyHQCountry) REFERENCES LOOKUP_COUNTRIES(Country);

ALTER TABLE PRODUCTION_COMPANY_SHOWS
ADD CONSTRAINT FK_ShowProductionCompanyID
FOREIGN KEY (ProductionCompanyID) REFERENCES PRODUCTION_COMPANIES(ProductionCompanyID);

ALTER TABLE PRODUCTION_COMPANY_SHOWS
ADD CONSTRAINT FK_ProductionCompanyShowID
FOREIGN KEY (ShowID) REFERENCES SHOWS(ShowID);

ALTER TABLE ROLES
ADD CONSTRAINT FK_RolePersonID
FOREIGN KEY (PersonID) REFERENCES PEOPLE(PersonID);

ALTER TABLE EPISODE_WRITERS
ADD CONSTRAINT FK_EpisodeWritersEpisodeID
FOREIGN KEY (EpisodeID) REFERENCES EPISODES(EpisodeID);

ALTER TABLE EPISODE_WRITERS
ADD CONSTRAINT FK_EpisodeWritersPersonID
FOREIGN KEY (PersonID) REFERENCES PEOPLE(PersonID);

ALTER TABLE AWARD_CATEGORY_RESULTS
ADD CONSTRAINT FK_AwardResultsCategoryID
FOREIGN KEY (AwardCategoryID) REFERENCES AWARD_CATEGORIES(AwardCategoryID);

ALTER TABLE AWARD_CATEGORY_RESULTS
ADD CONSTRAINT FK_AwardResultsShowID
FOREIGN KEY (ShowID) REFERENCES SHOWS(ShowID);

ALTER TABLE AWARD_CATEGORY_RESULTS
ADD CONSTRAINT FK_AwardResultsPersonID
FOREIGN KEY (PersonID) REFERENCES PEOPLE(PersonID);

ALTER TABLE AWARD_CATEGORIES
ADD CONSTRAINT FK_AwardCategoriesAwardID
FOREIGN KEY (AwardID) REFERENCES AWARDS(AwardID);

ALTER TABLE SHOWS
ADD CONSTRAINT FK_ShowCountryOfOrigin
FOREIGN KEY (CountryOfOrigin) REFERENCES LOOKUP_COUNTRIES(Country);

ALTER TABLE SHOWS
ADD CONSTRAINT FK_ShowOriginalLanguage
FOREIGN KEY (OriginalLanguage) REFERENCES LOOKUP_LANGUAGES(LanguageISOCode);

ALTER TABLE SHOWS
ADD CONSTRAINT FK_ShowOriginalNetworkID
FOREIGN KEY (OriginalNetworkID) REFERENCES NETWORKS(NetworkID);

ALTER TABLE EPISODE_ROLES
ADD CONSTRAINT FK_EpisodeRolesEpisodeID
FOREIGN KEY (EpisodeID) REFERENCES EPISODES(EpisodeID);

ALTER TABLE EPISODE_ROLES
ADD CONSTRAINT FK_EpisodeRolesRoleID
FOREIGN KEY (RoleID) REFERENCES ROLES(RoleID);

ALTER TABLE EPISODES
ADD CONSTRAINT FK_EpisodeSeasonID
FOREIGN KEY (SeasonID) REFERENCES SEASONS(SeasonID);

ALTER TABLE EPISODES
ADD CONSTRAINT FK_EpisodeDirectedBy
FOREIGN KEY (DirectedBy) REFERENCES PEOPLE(PersonID);

ALTER TABLE SEASONS
ADD CONSTRAINT FK_SeasonShowID
FOREIGN KEY (ShowID) REFERENCES SHOWS(ShowID);

ALTER TABLE SHOW_GENRES
ADD CONSTRAINT FK_ShowGenresGenreID
FOREIGN KEY (GenreID) REFERENCES LOOKUP_GENRES(GenreID);

ALTER TABLE SHOW_GENRES
ADD CONSTRAINT FK_ShowGenresShowID
FOREIGN KEY (ShowID) REFERENCES SHOWS(ShowID);
