# Write your MySQL query statement below

# this is to create the CTE 
WITH ranked AS (
SELECT
    Employee.name AS Employee,
    Department.name AS Department,
    Employee.salary AS Salary,
    DENSE_RANK() OVER (PARTITION BY department.id ORDER BY Employee.salary DESC) AS rn
  FROM Employee
  JOIN Department
  On Employee.DepartmentId = Department.id
)
SELECT Department, Employee, Salary
FROM ranked
WHERE rn <= 3;