-- Active: 1770280380117@@127.0.0.1@3306@school
USE School;

CREATE TABLE Student(
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age > 17),
    Course VARCHAR(50)
);


-- Operations --
-- 1. Insert Meaningful Data
INSERT INTO Student (Name, Email, Age, Course) VALUES
('Rahul Sharma', 'rahul.sharma@example.com', 20, 'CSE'),
('Anjali Verma', 'anjali.verma@example.com', 19, 'BCA'),
('Vikram Singh', 'vikram.singh@example.com', 21, 'BCA'),
('Ajeet Kumar', 'ajeet.kumar@example.com', 20, 'BBA'),
('Shubham Gaur', 'shubham.gaur@example.com', 23, 'BBA');

-- 2. Display Students older than 20
SELECT * FROM Student WHERE Age > 20;

-- 3. Display Students enrolled in BCA
SELECT * FROM Student WHERE Course = 'BCA';