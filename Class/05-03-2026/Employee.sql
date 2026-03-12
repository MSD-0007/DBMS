-- Active: 1770280380117@@127.0.0.1@3306@employee_db
CREATE DATABASE Employee_DB;

USE Employee_DB;

CREATE TABLE Employee (
    EmpNo       INT PRIMARY KEY,
    EmpName     VARCHAR(50) NOT NULL,
    Job         VARCHAR(30),
    DeptNo      INT,
    Basic       DECIMAL(10, 2),
    DA          DECIMAL(10, 2),
    HRA         DECIMAL(10, 2),
    PF          DECIMAL(10, 2),
    GrossPay    DECIMAL(10, 2),
    NetPay      DECIMAL(10, 2)
);

