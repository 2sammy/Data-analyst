--subqueries in where statement
--looking for employee who matches the id in the salary table
SELECT *
FROM employee_demographics
WHERE employee_id IN (
    SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1
    
    )

    --subquery in select statement
SELECT first_name, salary,
 (
    SELECT AVG(salary)
    FROM employee_salary
 )

-- subquery in the FROM statement
SELECT *
FROM
(
    SELECT gender, AVG(age), MAX(age),MIN(age),COUNT(age)
    FROM employee_demographics
    GROUP BY gender
) AS  agg_table

SELECT AVG(max_age)
FROM
(
    SELECT gender,
     AVG(age) as avg_age,
      MAX(age) as avg_max,
      MIN(age) as avg_min,
      COUNT(age)
    FROM employee_demographics
    GROUP BY gender
) AS  agg_table