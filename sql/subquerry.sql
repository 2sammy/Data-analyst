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


-- Find the employees who's salary is more than average salary earned by all employees
select *
from employee
where salary > (
    SELECT AVG(salary)
    FROM employee
)
-- scalar subquery
-- it returns 1 row and 1 COLUMN
 SELECT * -- filters the the employee salary who is more than average salary

 FROM employee_table
 WHERE salary > (
    SELECT AVG(salary) -- gives average salary 
    FROM employee_table

 )

 -- types of subquery
 -- scalar subquery
 -- returns one record, returns one column one row
 -- using jons
 SELECT e.*
 FROM employe_table 
 JOIN (select AVG(salary) sal FROM employee) avg_sal
    ON e.salry > avg_sal.sal

--  multiple rows subquery
-- subquery that returns multiple column and multiple rows
-- subquery that retuns only 1 column and multiple rows
/* Find the epmloyee who earn the highest salary in each department */
-- start finding the highest salary in each department
SELECT
    dept_name, 
    MAX(salary)
FROM employee
GROUP BY dept_name

-- finding the employees from each department who earn more salary
SELECT *
FROM employee
WHERE (dept_name, salary) in (
    SELECT
    dept_name, 
    MAX(salary)
FROM employee
GROUP BY dept_name
)

--single column , multiple rows
/* Finding department who do not have any employees */
SELECT * 
FROM department
WHERE dept_name not in (
    select DISTINCT dept_name 
    FROM employee)

--correlated subquery
-- finding the employees in each department who earn more than the average salary in that department
SELECT *
FROM employee e1
WHERE salary > (
    select AVG(salary)
    FROM employee e2
    WHERE dept_name = e1.dept_name
);

