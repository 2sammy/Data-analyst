--groupby 
-- groups rows that has same values in specified columns that you are grouping
 SELECT
        gender
FROM 
    employee_demographics
GROUP BY gender

;

-- find the average age for both men and female

SELECT
    gender, AVG(age)
FROM 
    employee_demographics
GROUP BY gender

;

-- we can group multiple columns
SELECT
        occupation, salary
FROM 
    employee_demographics
GROUP BY salary, occupation

;
--MAX showing the
SELECT
        occupation, 
        MAX(salary),
        MIN(salary),
        AVG(salary),
        COUNT(salary) -- counts the total number of rows within the salary column;

FROM 
    employee_demographics
GROUP BY salary, occupation

;

--ORDER BY
-- used to sort values in a row either asc or desc

SELECT
        occupation, salary
FROM 
    employee_demographics
ORDER BY occupation DESC -- the results will be arranged either asc or DESC

;