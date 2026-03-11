-- Active: 1770280380117@@127.0.0.1@3306@books
CREATE DATABASE BOOKS;

USE Books;

CREATE TABLE BOOKS(
    B_Id VARCHAR(20) PRIMARY KEY,
    Book_Name VARCHAR(50),
    Author_Name VARCHAR(50),
    Publisher VARCHAR(50),
    Price INTEGER,
    Type VARCHAR(20),
    Quantity INTEGER
);

INSERT INTO BOOKS VALUES('C01', 'Fast Cook', 'Lata Kapur', 'EPB', 355, 'Cookery', 5);
INSERT INTO BOOKS VALUES('F01', 'The Tears', 'William Hopkins', 'First', 650, 'Fiction', 20);
INSERT INTO BOOKS VALUES('T01', 'My C++', 'Brain & Brooke', 'FPB', 350, 'Text', 10);
INSERT INTO BOOKS VALUES('T02', 'C++ Brain', 'A.W. Rossaine', 'TDH', 350, 'Text', 15);
INSERT INTO BOOKS VALUES('F02', 'Thunderbolts', 'Anna Roberts', 'First', 750, 'Fiction', 50);