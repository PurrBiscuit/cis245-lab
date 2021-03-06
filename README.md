# cis245-lab
SQL Code for CIS245 Lab

Run in the following order:

1.) 1_create-alters-drops.sql - This file is the initial code that will drop any existing tables (if they exist), create the new tables from scratch and add any foreign key constraints via alter table statements as a last step.  The order of the statements in this file matters so leave it as is and run from top to bottom to get a complete, successful run.  This is to ensure that child tables are dropped before parent tables before they get recreated to avoid errors with foreign key constraints existing.

2.) 2_insert-values.sql - This file will insert all of the test data into the database after the tables are created and foreign key constraints are added.  The order that this file runs in matters as well since the parent table data needs to exist before child table data can be inserted and reference foreign keys from the parent table.

3.) 3_create_views.sql - This file will create the views necessary to query the database and produce reports.

4.) 4_run_views.sql - This file will run the select statements on the views that were created in the previous step.

5.) 5_create_stored_procedures.sql - This file will create the stored procedures that can be used to produce report tables, check data integrity via foreign key constraints, and remove or update parent table ids.

6.) 6_run_stored_procedures.sql - This file will run the stored procedures that were created in the previous step.
