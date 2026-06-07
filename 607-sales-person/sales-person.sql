SELECT name
FROM SalesPerson
# the start of the subquery
WHERE sales_id NOT IN (

    SELECT O.sales_id
    FROM Orders O
    JOIN Company C USING (com_id)
    WHERE C.name = 'RED'

);


# How the above solution works!
# Inner query = identify excluded people
# Outer query = remove them