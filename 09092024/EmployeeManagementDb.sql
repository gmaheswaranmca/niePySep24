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



