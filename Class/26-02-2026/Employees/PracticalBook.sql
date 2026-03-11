-- Active: 1770280380117@@127.0.0.1@3306@employee
USE Employee;

CREATE TABLE PERSON(
    PersonID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INTEGER,
    City VARCHAR(50)
);

-- Operations --
-- 1. Insert 5 records
INSERT INTO PERSON(PersonID, Name, Age, City) VALUES
(1, 'Rahul', 20, 'Guwahati'),
(2, 'Anjali', 22, 'Mumbai'),
(3, 'Vikram', 25, 'Delhi'),
(4, 'Ajeet', 30, 'Bangalore'),
(5, 'Shubham', 28, 'Chennai');

-- 2. Display all records
SELECT * FROM PERSON;

-- 3. Display any name and city coloumns
SELECT Name, City FROM PERSON;

-- 4. Display the details of the table person
DESCRIBE PERSON;