-- joins help pyou to combine two or more column if 
-- they have common values or similar
-- INNER JOIN 
-- WANNA return  rows of the same in those columns
SELECT *
FROM employee_demographics
INNER JOIN employee_salary
    ON employee_demographics.employee_id = employee_salary.employee_id

--using alias
SELECT  
    dem.employee_id,
    age,
    occupation,
    sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id

--left join
-- everything from left table and only values that matches from other table

SELECT  
    dem.employee_id,
    age,
    occupation,
    sal.salary
FROM employee_demographics AS dem
LEFT OUTER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
    ;


-- everything from right table and only values that matches from other table
SELECT  
    dem.employee_id,
    age,
    occupation,
    sal.salary
FROM employee_demographics AS dem
RIGHT OUTER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
    