# Write your MySQL query statement below

WITH cte AS (
SELECT p.product_name AS product_name,
        sum(o.unit) AS unit
FROM Products p
JOIN Orders o
ON o.product_id = p.product_id
WHERE MONTH(o.order_date) = 2 AND YEAR(o.order_date) = 2020
GROUP BY p.product_name
)

SELECT product_name, unit
FROM cte
WHERE unit >= 100;