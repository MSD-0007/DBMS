-- Active: 1770280380117@@127.0.0.1@3306@employee

CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE EMPLOYEES (
    Employee_Id INTEGER PRIMARY KEY,
    First_Name CHAR(20),
    Last_Name CHAR(20),
    Email VARCHAR(50),
    Phone_Number BIGINT,
    Hire_Date VARCHAR(20),
    Job_Id CHAR(20),
    Salary INTEGER,
    Commission_Pct FLOAT,
    Manager_Id INTEGER,
    Department_Id INTEGER
);

INSERT INTO EMPLOYEES (Employee_Id, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Commission_Pct, Manager_Id, Department_Id)
VALUES
    (101, 'John',  'Smith', 'john.smith@mail.com', 9876543210, '10-JAN-21', 'IT_PROG', 5000, 0.10, 100, 60),
    (102, 'Maria', 'Austin','maria.a@mail.com',    9876543211, '15-MAR-20', 'HR_REP',  4500, NULL, 101, 70),
    (103, 'Rahul', 'Das',   'rahul.d@mail.com',    9876543212, '20-JUL-19', 'FI_MGR',  6000, 0.15, 100, 80),
    (104, 'Anita', 'Paul',  'anita.p@mail.com',    9876543213, '25-MAY-22', 'MK_REP',  4700, NULL, 103, 60),
    (105, 'David', 'Austin','david.a@mail.com',    9876543214, '30-NOV-18', 'SA_REP',  5200, 0.05, 102, 90);