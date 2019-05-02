/* no parameter needed for this stored procedure
so we can just run it as is */

EXEC ACTOR_EPISODE_REPORT;

/* no parameter needed for this stored procedure
so we can just run it as is */

EXEC SHOWS_REPORT;

/* grab the first person id from the ROLES table and
use it to run a demonstration of this stored procedure */

DECLARE @PersonID uniqueidentifier;
SELECT @PersonID = (SELECT TOP 1 PersonID FROM ROLES);
EXEC REMOVE_ACTOR @PersonID;

/* grab a random show id from the SHOWS table and
use it to run a demonstration of this stored procedure */

DECLARE @RandomShowID uniqueidentifier;
SELECT @RandomShowID=(SELECT TOP 1 ShowID FROM SHOWS ORDER BY NEWID());
EXEC UPDATE_SHOW_ID @RandomShowID;

/* no parameter needed for this stored procedure
so we can just run it as is */

EXEC FOREIGN_KEY_REPORT;