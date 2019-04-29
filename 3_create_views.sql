/* drop any existing views so they can be recreated 
with the create view statements below */

IF EXISTS(SELECT 1 FROM sys.views WHERE name='CATCHY_SLOGANS' and type='v')
DROP VIEW CATCHY_SLOGANS;
GO

IF EXISTS(SELECT 1 FROM sys.views WHERE name='I_SEE_DEAD_PEOPLE' and type='v')
DROP VIEW I_SEE_DEAD_PEOPLE;
GO

IF EXISTS(SELECT 1 FROM sys.views WHERE name='ACTORS' and type='v')
DROP VIEW ACTORS;
GO

IF EXISTS(SELECT 1 FROM sys.views WHERE name='FUNNY_LIKE_A_CLOWN' and type='v')
DROP VIEW FUNNY_LIKE_A_CLOWN;
GO

IF EXISTS(SELECT 1 FROM sys.views WHERE name='SMALL_TOWN_WINNERS' and type='v')
DROP VIEW SMALL_TOWN_WINNERS;
GO

IF EXISTS(SELECT 1 FROM sys.views WHERE name='THIRTY_MINUTE_EPISODES' and type='v')
DROP VIEW THIRTY_MINUTE_EPISODES;
GO

IF EXISTS(SELECT 1 FROM sys.views WHERE name='ACTOR_EPISODES' and type='v')
DROP VIEW ACTOR_EPISODES;
GO

IF EXISTS(SELECT 1 FROM sys.views WHERE name='FOREIGN_DRAMA_RUNNER_UPS' and type='v')
DROP VIEW FOREIGN_DRAMA_RUNNER_UPS;
GO

/* create a view to show the names and slogans from all the
production companies in the PRODUCTION_COMPANIES table */

CREATE VIEW CATCHY_SLOGANS
AS SELECT ProductionCompanyName, ProductionCompanySlogan FROM PRODUCTION_COMPANIES;
GO

/* create a view to show the last name, first name, gender, and 
date of death for all the dead folks in the PEOPLE table */

CREATE VIEW I_SEE_DEAD_PEOPLE
AS SELECT PersonLastName, PersonFirstName, PersonGender, PersonDateOfBirth, PersonDateOfDeath
FROM PEOPLE WHERE PersonDateOfDeath IS NOT NULL;
GO

/* create a view to show all the actors in the PEOPLE table
and their associated roles from the ROLES table */

CREATE VIEW ACTORS
AS SELECT p.PersonLastName, p.PersonFirstName, r.RoleLastName, r.RoleFirstName
FROM PEOPLE as p JOIN ROLES as r ON (p.PersonID = r.PersonID);
GO

/* create a view to show the award name and award category name from
the AWARDS and AWARD_CATEGORIES tables for all comedy related awards */

CREATE VIEW FUNNY_LIKE_A_CLOWN
AS SELECT a.AwardName, c.AwardCategoryName FROM AWARDS as a
JOIN AWARD_CATEGORIES as c ON (a.AwardID = c.AwardID)
WHERE AwardCategoryName LIKE '%Comedy%';
GO

/* create a view to show all the award category winners for actors,
writers and directors who weren't born in New York or California */

CREATE VIEW SMALL_TOWN_WINNERS
AS SELECT p.PersonFirstName, p.PersonLastName, a.AwardCategoryID, a.ResultDate
FROM AWARD_CATEGORY_RESULTS as a JOIN (SELECT * FROM PEOPLE WHERE PersonBirthStateCountyID NOT IN(
SELECT StateCountyId FROM LOOKUP_STATES_COUNTIES
WHERE StateCountyAbbr='NY' OR StateCountyAbbr='CA')) as p ON (a.PersonID = p.PersonID)
WHERE a.Result=1;
GO

/* create a view to show all the shows with seasons that have episodes
that are thirty minutes or longer in them */

CREATE VIEW THIRTY_MINUTE_EPISODES
AS SELECT s.ShowName, s.OriginalLanguage, n.SeasonNumber, e.EpisodeNumber, e.RunningTimeInMinutes
FROM SHOWS as s JOIN SEASONS as n ON (s.ShowID = n.ShowID)
JOIN EPISODES as e ON (n.SeasonID = e.SeasonID)
WHERE e.RunningTimeInMinutes >= 30;
GO

/* create a view to show the number of episodes that each actor
from the PEOPLE table has appeared in */

CREATE VIEW ACTOR_EPISODES
AS SELECT p.PersonFirstName, p.PersonLastName, COUNT(p.PersonID) as NumberOfEpisodes
FROM PEOPLE as p JOIN ROLES as r ON (p.PersonID = r.PersonID)
JOIN EPISODE_ROLES as e ON (r.RoleID = e.RoleID)
GROUP BY p.PersonID, p.PersonFirstName, p.PersonLastName;
GO

/* create a view to show the foreign shows that were
nominated for a drama related award category but didn't win */

CREATE VIEW FOREIGN_DRAMA_RUNNER_UPS
AS SELECT s.ShowName, l.LanguageName, c.AwardCategoryName, a.Result, a.ResultDate
FROM LOOKUP_LANGUAGES as l
JOIN SHOWS as s ON (l.LanguageISOCode = s.OriginalLanguage)
JOIN AWARD_CATEGORY_RESULTS as a ON (s.ShowID = a.ShowID)
JOIN AWARD_CATEGORIES as c ON (a.AwardCategoryID = c.AwardCategoryID)
WHERE c.AwardCategoryName LIKE '%Drama%' AND l.LanguageISOCode != 'eng' AND a.Result=0;
GO
