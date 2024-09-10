Today:
    1. Complete MySQL learnings
        - CRUD operations 
        - SQL : Structured Query Language 
            DDL - Data Definition Language
                CREATE DATABASE, DROP DATABASE 
                CREATE TABLE, ALTER TABLE, DROP TABLE, TRUNCATE TABLE 

            DML - Data Manipulation Language 
            TCL - Transaction Control Language 
            DCL - Data Control Language 
        - SQL 
            - Column Selection
            - Filtering - Where 
            - Sorting - ORDER BY 
            - Aggregators - MIN MAX SUM AVG COUNT 
            - Group By, Having 
            - Join
    2. Python - Djongo with Mysql 
        - Install python, django, mysqlconnector 
            python installation = python + pip 
                pip = python package manager 
            django installation = django + djangoadmin 
                djangoadmin - CLI for django based web development 
        - djangoadmin 
            - project creation 
                - create application in the project  
            - work with mysql 
                - configure the mysql 
                - define the model : Employee
                    - CRUD operations using model 
                - django python shell 


USE EmployeeManagementDb;
-- Drop the database "EmployeeManagementDb"
    -- Drop the tables 
    -- Person 
        -- Delete persons 
            -- DELETE FROM Person; -- DML, just deletes rows + not reset structure of the table  
			-- SELECT * FROM Person;
            TRUNCATE TABLE Person; -- DDL, deletes rows + resets structure 

            DROP TABLE Person; 
            -- DESC Person; 
    -- departments 
        -- Delete departments 
			SELECT * FROM departments;
            TRUNCATE TABLE departments;
			-- DESC departments;
            -- DROP TABLE departments;
            DROP TABLE IF EXISTS departments;
    -- DROP DATABASE EmployeeManagementDb;
    DROP DATABASE IF EXISTS EmployeeManagementDb;