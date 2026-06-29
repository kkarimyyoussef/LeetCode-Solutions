# Write your MySQL query statement below
WITH Ranked as(
    SELECT 
        Department.name AS Department,
        Employee.name AS Employee,
        Employee.salary As Salary,
    RANK() OVER (PARTITION BY Department.id ORDER BY Employee.salary DESC) AS rn
    FROM Department
    JOIN Employee
    ON Department.id = Employee.departmentid
)

SELECT Department, Employee, Salary
FROM Ranked
Where rn = 1;