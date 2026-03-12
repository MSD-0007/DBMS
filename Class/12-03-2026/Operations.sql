-- Operations --
SELECT * FROM hospital_new;

-- 1. Show all information about the patients whose names are having exactly five(5) characters only
SELECT * FROM hospital_new WHERE LENGTH(Name) = 5;

-- 2. Reduce Rs 200 from the charge of all male patients whos are in Orthopedic department
UPDATE hospital_new SET Charge = Charge - 200 WHERE Sex = 'M' AND Department = 'Orthopedic';

-- 3. Insert a new row in the above table with the following data:
    -- 11, 'Rakesh', 45, 'ENT', {08/08/08}, 1200, 'M'
INSERT INTO hospital_new VALUES (11, 'Rakesh', 45, 'ENT', '2008/08/08', 1200, 'M');

SELECT * FROM hospital_new;

-- 4. Find the output:
SELECT SUM(Charge) from hospital_new GROUP BY Department;

-- 5. Find the output:
SELECT Name FROM hospital_new WHERE Sex='F' AND Age > 20;