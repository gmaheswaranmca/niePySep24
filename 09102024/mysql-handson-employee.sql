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



    -- MySQL Learning continued 

-- drop db if there, otherwise create db 
Drop Database IF EXISTS EmployeeManagementDb;
Create Database IF NOT EXISTS EmployeeManagementDb;
USE EmployeeManagementDb;
-- departments, employees, projects, assignments
-- departments{id, name}
DROP TABLE IF EXISTS departments;
CREATE TABLE IF NOT EXISTS departments (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL
);
DESC departments;
SELECT * FROM departments;
-- employees{id, name, dept_id, job_title, salary, bonus}
DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    dept_id INT NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    salary FLOAT NOT NULL,
    bonus FLOAT NOT NULL,
    FOREIGN KEY(dept_id) REFERENCES departments(id)    
);
DESC employees;
SELECT * FROM employees;
-- projects{id, name, budget}
DROP TABLE IF EXISTS projects;
CREATE TABLE IF NOT EXISTS projects (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	budget FLOAT NOT NULL
);
DESC projects;
SELECT * FROM projects;
-- assignments{id, employee_id, project_id, role}
DROP TABLE IF EXISTS assignments;
CREATE TABLE IF NOT EXISTS assignments (
	id INT PRIMARY KEY AUTO_INCREMENT,
	employee_id INT NOT NULL,
    project_id INT NOT NULL,
    role VARCHAR(255) NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES employees(id),
    FOREIGN KEY(project_id) REFERENCES projects(id)
);
DESC assignments;
SELECT * FROM assignments;
-- 