# Write your MySQL query statement below
SELECT  E2.unique_id , E.name
FROM Employees E
LEFT OUTER JOIN EmployeeUNI E2
USING (id);