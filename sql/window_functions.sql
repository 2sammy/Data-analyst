SELECT gender, AVG(salary) as avg_sal
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender
;

-- using over other group by
-- partition helps to have individual rows

SELECT gender, AVG(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender

;

SELECT
dem.employee_id,
dem.first_name, 
dem.last_name, 
gender, 
salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num
RANK()OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
RANK()OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank,
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender
;


-- max salary
SELECT max(salary) as Salary_max
FROM employee

--max salary from each department

SELECT dept_name, max(salary) as Salary_max
FROM employee
GROUP BY dept_name 
---Joins
-- when told to fetch names of employees and their departments

SELECT e.emp_name, d.dept_name
FROM employee e
INNER JOIN department d 
ON e.dept_id= d.dept_id;