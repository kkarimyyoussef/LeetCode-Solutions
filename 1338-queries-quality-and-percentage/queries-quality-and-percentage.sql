# Write your MySQL query statement below


SELECT  query_name,
        ROUND(SUM(rating/position)/count(*), 2) AS quality,
        ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY Query_name;