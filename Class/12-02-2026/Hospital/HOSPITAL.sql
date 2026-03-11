CREATE DATABASE HOSPITAL;
USE HOSPITAL;

CREATE TABLE HOSPITAL(
    No INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    Age INTEGER,
    Department VARCHAR(50),
    Dateofadmin DATE,
    Charge INTEGER,
    Sex VARCHAR(10)
);

INSERT INTO HOSPITAL VALUES
(1, 'Arpit', 62, 'Surgery', '2006/01/21', 300, 'M'),
(2, 'Zayana', 18, 'ENT', '2005/12/12', 250, 'F'),
(3, 'Kareem', 68, 'Orthopedic', '2006/02/19', 450, 'M'),
(4, 'Abhilash', 26, 'Surgery', '2006/01/24', 300, 'M'),
(5, 'Dhanya', 24, 'ENT', '2006/10/20', 350, 'F'),
(6, 'Siju', 23, 'Cardiology', '2006/10/10', 800, 'M'),
(7, 'Ankita', 16, 'ENT', '2006/04/13', 100, 'F'),
(8, 'Divya', 20, 'Cardiology', '2006/11/10', 500, 'F'),
(9, 'Nidhim', 25, 'Orthopedic', '2006/05/12', 700, 'M'),
(10, 'Hari', 28, 'Surgery', '2006/03/19', 450, 'M');
