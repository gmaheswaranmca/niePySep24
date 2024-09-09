-- To create database 
Create Database EmployeeManagementDb;

-- To select database 
USE EmployeeManagementDb;

-- To create table 
CREATE TABLE Person
(
	id INT PRIMARY KEY auto_increment,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);
DESC Person;
SELECT * FROM Person;
/*
CREATE TABLE Person
(
	id INT auto_increment,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);
*/


INSERT INTO Person(first_name, last_name)
VALUES('rahul', 'dravid');

INSERT INTO Person(first_name, last_name)
VALUES('rohit', 'sharma');

INSERT INTO Person(first_name, last_name)
VALUES('virat', 'kohli'), 
 ('suryakumar','yadav');

-- to query virat kohli by id 
SELECT * FROM Person WHERE id=3;

-- to query virat by name 
SELECT * FROM Person WHERE first_name='virat';
-- to query all the persons
SELECT * FROM Person;
-- to query all the persons
SELECT id, first_name, last_name FROM Person;

INSERT INTO Person(first_name, last_name)
VALUES('Maheswaran','G');

-- to update Maheswaran lastname as 'Govindaraju'
UPDATE Person 
SET last_name='Govindaraju'
WHERE id=5;

DELETE FROM Person
WHERE id=5;


-- departments {id, name}
CREATE TABLE departments
(
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL
);
DESC departments;
SELECT * FROM departments;
INSERT INTO departments(name) 
VALUES ('Analysis'),('Design'),('Development'),('Testing');
