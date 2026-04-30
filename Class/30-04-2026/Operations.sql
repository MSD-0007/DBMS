USE ADTU;

-- SQL Query to Insert Data
INSERT INTO Students (student_id, name, email, dob) VALUES
	(1, 'Asha Rao', 'asha.rao@example.com', '2004-01-15'),
	(2, 'Karan Das', 'karan.das@example.com', '2003-09-02'),
	(3, 'Meera Sen', 'meera.sen@example.com', '2004-06-22');

INSERT INTO Courses (course_id, course_name, credits) VALUES
	(101, 'Database Systems', 4),
	(102, 'Operating Systems', 3),
	(103, 'Data Structures', 5);

INSERT INTO Enrollments (enroll_id, student_id, course_id, grade) VALUES
	(1001, 1, 101, 'A'),
	(1002, 1, 102, 'B'),
	(1003, 2, 101, 'C'),
	(1004, 2, 103, 'B'),
	(1005, 3, 102, 'A');

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;

-- Constraint violation example (invalid grade)
INSERT INTO Enrollments (enroll_id, student_id, course_id, grade) VALUES(1006, 3, 103, 'E');

-- SQL Queries to Alter Tables
ALTER TABLE Students
	ADD phone_number VARCHAR(20) UNIQUE;

-- A record with a duplicate email to observe Violates a constraint
ALTER TABLE Courses
	ADD CONSTRAINT chk_credits_range
	CHECK (credits BETWEEN 1 AND 5);


-- SQL Queries to Test Constraints
SELECT s.student_id, s.name, c.course_name
FROM Students s
JOIN Enrollments e ON e.student_id = s.student_id
JOIN Courses c ON c.course_id = e.course_id
WHERE c.course_name = 'Database Systems';

SELECT course_id, course_name, credits
FROM Courses
WHERE credits > 3;
