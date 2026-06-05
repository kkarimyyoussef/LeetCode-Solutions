# Write your MySQL query statement below
SELECT E.name, B.bonus
FROM Employee E
LEFT OUTER JOIN Bonus B
ON E.empId = B.empID
WHERE B.Bonus < 1000 OR B.Bonus IS NULL;