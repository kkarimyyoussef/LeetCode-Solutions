SELECT (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
    ORDER BY num DESC
    LIMIT 1
) AS num;


-- my orginal code and throught proccess 
-- the reason why this did not work is because of "NOT IN"
-- it causes unexpected behaviour when it gets a null value from the inner loop
-- SELECT num  
-- FROM MyNumbers
-- WHERE num not in (
--     SELECT num
--     FROM MyNumbers
--     GROUP BY num
--     HAVING COUNT(*) != 1)

-- ORDER BY num DESC
-- LIMIT 1;