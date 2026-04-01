USE STUDENT_COURSE_DB;

-- 1. Display all combinations of students and courses.
SELECT s.StudentID, s.Name, c.CourseName
FROM Student_New s
CROSS JOIN (SELECT DISTINCT CourseName FROM COURSE) c;

-- 2. Show every student paired with every course.
SELECT s.Name, c.CourseName
FROM Student_New s
CROSS JOIN (SELECT DISTINCT CourseName FROM COURSE) c;

-- 3. Display student names along with the courses they are enrolled in.
SELECT s.Name, c.CourseName
FROM Student_New s
INNER JOIN COURSE c ON s.StudentID = c.StudentID;

-- 4. Display StudentID, Name, and CourseName for all matching records.
SELECT s.StudentID, s.Name, c.CourseName
FROM Student_New s
INNER JOIN COURSE c ON s.StudentID = c.StudentID;

-- 5. Display details of students who have taken any course.
SELECT DISTINCT s.StudentID, s.Name
FROM Student_New s
INNER JOIN COURSE c ON s.StudentID = c.StudentID;

-- 6. List all StudentIDs from both Student_New and COURSE tables using UNION.
SELECT StudentID FROM Student_New
UNION
SELECT StudentID FROM COURSE;

-- 7. Display all unique StudentIDs appearing in either table.
SELECT StudentID FROM Student_New
UNION
SELECT StudentID FROM COURSE
ORDER BY StudentID;

-- 8. Find StudentIDs present in both Student_New and COURSE tables.
SELECT DISTINCT s.StudentID
FROM Student_New s
INNER JOIN COURSE c ON s.StudentID = c.StudentID
ORDER BY s.StudentID;

-- 9. Display students who are enrolled in at least one course.
SELECT DISTINCT s.StudentID, s.Name
FROM Student_New s
INNER JOIN COURSE c ON s.StudentID = c.StudentID
ORDER BY s.StudentID;

-- 10. Find students who are not enrolled in any course.
SELECT s.StudentID, s.Name
FROM Student_New s
LEFT JOIN COURSE c ON s.StudentID = c.StudentID
WHERE c.StudentID IS NULL
ORDER BY s.StudentID;

-- 11. Count how many students are enrolled in courses.
SELECT COUNT(DISTINCT c.StudentID) AS EnrolledStudentCount
FROM COURSE c;

-- 12. Display student names along with course names sorted by Name.
SELECT s.Name, c.CourseName
FROM Student_New s
INNER JOIN COURSE c ON s.StudentID = c.StudentID
ORDER BY s.Name;
