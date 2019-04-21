# cis245-lab
SQL Code for CIS245 Lab

Run in the following order:

1.) 1_create-alters-drops.sql - This is the initial code that will drop any existing tables (if they exist), create the new tables from scratch and add any foreign key constraints via alter table statements as a last step.  The order of the statements in this file matters so leave it as is and run from top to bottom to get a complete, successful run.  This is to ensure that child tables are dropped before parent tables before they get recreated to avoid errors with foreign key constraints existing.

2.) 2_insert-values.sql - This file will insert all of the test data into the database after the tables are created and foreign key constraints are added.  The order that this file runs in matters as well since the parent table data needs to exist before child table data can be inserted and reference foreign keys from the parent table.
