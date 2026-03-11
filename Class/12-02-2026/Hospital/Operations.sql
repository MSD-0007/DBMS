# 1. Display all records from the HOSPITAL table.
SELECT * FROM HOSPITAL;

# 2. Display Name and Department of all patients.
SELECT Name, Department FROM HOSPITAL;

# 3. Show details of patients from the Surgery department.
SELECT * FROM HOSPITAL WHERE Department = 'Surgery';

# 4. Display patients whose Age is greater than 25.
SELECT * FROM HOSPITAL WHERE Age > 25;

# 5. Show details of female patients.
SELECT * FROM HOSPITAL WHERE Sex = 'F';

# 6. Display patients whose Charge is more than 400.
SELECT * FROM HOSPITAL WHERE Charge > 400;

# 7. Show patients from ENT department.
SELECT * FROM HOSPITAL WHERE Department = 'ENT';

# 8. Display Name and Age of patients whose Age is less than 30.
SELECT Name, Age FROM HOSPITAL WHERE Age < 30;