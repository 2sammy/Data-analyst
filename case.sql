--case statement

SELECT 
    first_name,
    last_name,
    age
    CASE
        WHEN age <= 30 THEN 'young'
         WHEN BETWEEN 20 AND 50 THEN 'Middle'

        END AS age_bracket

FROM empployee_demographics
ORDER BY 2
;

-- salary increment of 5%
SELECT
    first_name,
    last_name,
    salary
CASE
WHEN salary< 50000 THEN salary + (salary *0.05)
END AS New_salary

FROM employee_salary

SELECT
    first_name,
    last_name,
    salary
CASE
WHEN salary< 50000 THEN salary + (salary *0.07)
END AS New_salary
CASE
WHEN dept_id = 6 THEN salary * 0.10
END AS Bonus

FROM employee_salary