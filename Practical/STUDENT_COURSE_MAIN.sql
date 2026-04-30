CREATE DATABASE STUDENT_COURSE_DB;
USE STUDENT_COURSE_DB;

CREATE TABLE Student_New (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE COURSE (
    CourseID INT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseName VARCHAR(50) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student_New(StudentID)
);

INSERT INTO Student_New (StudentID, Name) VALUES
(101, 'Aarav'),
(102, 'Diya'),
(103, 'Kabir'),
(104, 'Meera'),
(105, 'Rohan'),
(106, 'Sana');

INSERT INTO COURSE (CourseID, StudentID, CourseName) VALUES
(1, 101, 'DBMS'),
(2, 101, 'Mathematics'),
(3, 102, 'Physics'),
(4, 103, 'Chemistry'),
(5, 105, 'DBMS');

SELECT * FROM Student_New;
SELECT * FROM COURSE;