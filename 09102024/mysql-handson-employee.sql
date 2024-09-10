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



-- To add rows to departments(5), employees(10), projects(5) and assignments(10)
INSERT INTO departments (name) VALUES
        ('IT Department'),
        ('Product Development'),
        ('Quality Assurance'),
        ('Sales'),
        ('IT Support');
SELECT * FROM departments;
        
INSERT INTO employees (name, dept_id, job_title, salary, bonus) VALUES
        ('John Doe', 1, 'Software Engineer', 70000, 5000),
        ('Jane Smith', 1, 'Data Scientist', 80000, 6000),
        ('Alice Johnson', 2, 'Product Manager', 90000, 7000),
        ('Bob Brown', 2, 'UI/UX Designer', 65000, 4500),
        ('Charlie Davis', 3, 'QA Engineer', 60000, 4000),
        ('Emily Wilson', 3, 'Technical Writer', 55000, 3500),
        ('Frank Thomas', 4, 'Sales Manager', 75000, 5500),
        ('Grace Lee', 4, 'Marketing Specialist', 68000, 5000),
        ('Henry Martinez', 5, 'System Administrator', 72000, 5200),
        ('Ivy Clark', 5, 'Database Administrator', 74000, 5300);
SELECT * FROM employees;
INSERT INTO projects (name, budget) VALUES
        ('Project Alpha', 100000),
        ('Project Beta', 150000),
        ('Project Gamma', 200000),
        ('Project Delta', 250000),
        ('Project Epsilon', 300000);
	SELECT * FROM projects;
INSERT INTO assignments (employee_id, project_id, role) VALUES
        (1, 1, 'Lead Developer'),
        (2, 1, 'Data Analyst'),
        (3, 2, 'Project Manager'),
        (4, 2, 'Designer'),
        (5, 3, 'QA Lead'),
        (6, 3, 'Technical Writer'),
        (7, 4, 'Sales Executive'),
        (8, 4, 'Marketing Analyst'),
        (9, 5, 'Systems Engineer'),
        (10, 5, 'Database Analyst');
	SELECT * FROM assignments;