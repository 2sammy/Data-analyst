-- common tables expressions
WITH CTE_example AS
(
SELECT gender,
 AVG(salary) as avg_sal,
  MAX(salary) max_sal,
  MIN(salary) min_sal,
  COUNT(salary)
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender
)

-- helps to advance more calculatioins
-- also helps for readability
SELECT AVG(avg_sal)
FROM CTE_example  


WITH CTE_example AS
(
SELECT gender,
 AVG(salary) as avg_sal,
  MAX(salary) max_sal,
  MIN(salary) min_sal,
  COUNT(salary)
FROM employee_demographics dem
WHERE employee_date > '1985-01-01'
),
CTE_Example2 AS (
    SELECT 
        employee_id,
        salary
    FROM employee_salary
    WHERE salary  > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
    ON CTE_Example.employee_id = CTE_Example2.employee_id
;

