-- 1. Display employee id, first name, last name and salary of all employees.
SELECT Employee_Id, First_Name, Last_Name, Salary FROM EMPLOYEES;

-- 2. List the employees who work under manager 100.
SELECT * FROM EMPLOYEES WHERE Manager_Id = 100;

-- 3. Find the names of employees who have salary greater than or equal to 4800.
SELECT First_Name, Last_Name FROM EMPLOYEES WHERE Salary >= 4800;

-- 4. List the employees whose last name is 'AUSTIN'.
SELECT * FROM EMPLOYEES WHERE Last_Name = 'Austin';

-- 5. Find the names of employees who work in departments 60, 70 and 80.
SELECT First_Name, Last_Name
FROM EMPLOYEES
WHERE
    Department_Id IN (60, 70, 80);

-- 6. Display the unique Manager_Id values from the table.
SELECT DISTINCT Manager_Id FROM EMPLOYEES;

-- 7. Display employees whose first name has exactly 5 characters.
SELECT * FROM EMPLOYEES WHERE First_Name LIKE '_____';

-- 8. Display employees whose email starts with 'm'.
SELECT * FROM EMPLOYEES WHERE Email LIKE 'm%';

-- 9. Display employees whose last name starts with 'A' and ends with 'N'.
SELECT * FROM EMPLOYEES WHERE Last_Name LIKE 'A%n';

-- 10. List employees working in department 60 OR 80.
SELECT *
FROM EMPLOYEES
WHERE
    Department_Id = 60
    OR Department_Id = 80;

-- 11. Display employees whose first name starts with 'A' OR salary greater than 5500.
SELECT * FROM EMPLOYEES WHERE First_Name LIKE 'A%' OR Salary > 5500;

-- 12. Display employees whose department is NOT in (60, 70).
SELECT * FROM EMPLOYEES WHERE Department_Id NOT IN(60, 70);

-- 13. Display employees NOT working under manager 100.
SELECT * FROM EMPLOYEES WHERE Manager_Id != 100;

-- 14. Display employees whose phone number ends with '10'.
SELECT * FROM EMPLOYEES WHERE Phone_Number LIKE '%10';

-- 15. Display employees hired after 01-JAN-2020.
SELECT *
FROM EMPLOYEES
WHERE
    STR_TO_DATE(Hire_Date, '%d-%b-%y') > STR_TO_DATE('01-JAN-20', '%d-%b-%y'); -- Converts string to DATE Format for comparison, 

-- 16. Display employees whose commission is NOT NULL.
SELECT * FROM EMPLOYEES WHERE Commission_Pct IS NOT NULL;