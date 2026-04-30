CREATE SCHEMA ADTU;
USE ADTU;

CREATE TABLE Students (
	student_id INTEGER PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	dob DATE
);

CREATE TABLE Courses (
	course_id INTEGER PRIMARY KEY,
	course_name VARCHAR(100) NOT NULL UNIQUE,
	credits INTEGER DEFAULT 3
);

CREATE TABLE Enrollments (
	enroll_id INTEGER PRIMARY KEY,
	student_id INTEGER NOT NULL,
	course_id INTEGER NOT NULL,
	grade CHAR(1),
	CONSTRAINT chk_grade
		CHECK (grade IN ('A', 'B', 'C', 'D', 'F')),
	CONSTRAINT fk_enroll_student
		FOREIGN KEY (student_id) REFERENCES Students(student_id),
	CONSTRAINT fk_enroll_course
		FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
