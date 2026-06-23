# Write your MySQL query statement below
SELECT u.name, COALESCE(SUM(r.distance), 0) AS travelled_distance
FROM Users u
LEFT OUTER JOIN Rides r
ON u.id = r.user_id
GROUP By u.id
ORDER By travelled_distance DESC, name ASC;