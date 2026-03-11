USE Employee_DB;

-- (a) INSERT FIVE RECORDS (Clean Insertion - Only Raw Values)
INSERT INTO Employee (EmpNo, EmpName, Job, DeptNo, Basic)
VALUES
(101, 'Amit Sharma',  'Manager',   10, 15000.00),
(102, 'Priya Mehta',  'Analyst',   20, 12000.00),
(103, 'Ravi Kumar',   'Clerk',     10,  7000.00),
(104, 'Sneha Patil',  'Developer', 30, 18000.00),
(105, 'Karan Singh',  'Salesman',  20,  6000.00);

-- Calculate PF, DA, HRA, GrossPay, NetPay separately
UPDATE Employee SET
    PF       = Basic * 0.12,
    DA       = Basic * 0.30,
    HRA      = Basic * 0.40,
    GrossPay = Basic + DA + HRA,
    NetPay   = GrossPay - PF;

SELECT * FROM Employee;

-- (b) EMPLOYEES WITH LOWEST BASIC IN EACH DEPT
SELECT E.EmpNo, E.EmpName, E.Job, E.DeptNo, E.Basic
FROM Employee E
WHERE
    E.Basic = (
        SELECT MIN(E2.Basic)
        FROM Employee E2
        WHERE
            E2.DeptNo = E.DeptNo
    )
ORDER BY E.DeptNo;

-- (c) IF NetPay < 10,000 → ADD Rs.1200 AS SPECIAL ALLOWANCE
UPDATE Employee SET NetPay = NetPay + 1200 WHERE NetPay < 10000;

SELECT EmpNo, EmpName, NetPay FROM Employee;

-- (d) EMPLOYEES WITH GROSSPAY BETWEEN 10,000 & 20,000
SELECT
    EmpNo,
    EmpName,
    Job,
    DeptNo,
    GrossPay
FROM Employee
WHERE
    GrossPay BETWEEN 10000 AND 20000
ORDER BY GrossPay;

-- (e) EMPLOYEES WHO EARN MAXIMUM SALARY (NetPay)
SELECT
    EmpNo,
    EmpName,
    Job,
    DeptNo,
    Basic,
    GrossPay,
    NetPay
FROM Employee
WHERE
    NetPay = (
        SELECT MAX(NetPay)
        FROM Employee
    );