-- Active: 1770280380117@@127.0.0.1@3306@hospital
USE HOSPITAL;

CREATE TABLE HOSPITAL_NEW(
    No INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    Age INTEGER,
    Department VARCHAR(50),
    Dateofadmin DATE,
    Charge INTEGER,
    Sex VARCHAR(10)
);

INSERT INTO HOSPITAL_NEW VALUES
(1, 'Arpit', 62, 'Surgery', '2006/01/21', 300, 'M'),
(2, 'Zayana', 18, 'ENT', '2005/12/12', 250, 'F'),
(3, 'Kareem', 68, 'Orthopedic', '2006/02/19', 450, 'M'),
(4, 'Abhilash', 26, 'Surgery', '2006/01/24', 300, 'M'),
(5, 'Dhanya', 24, 'ENT', '2006/10/20', 350, 'F');
