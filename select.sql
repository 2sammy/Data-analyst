--select used to retrieve data from database
-- FROM used to specify the table
SELECT first_name,
        last_name,
        birth_date,
        age,
        (age + 1) * 10 +10

FROM  parks_and_recreation.employee_demographics

--distict
SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

-- where clause
-- it is used to filter our records or rows
-- when we use where statement we are going to get rows
-- that fill specific conditions

SELECT *
FROM employee_salary
WHERE first_name = "Leslie"

;

-- using operators
SELECT *
FROM employee_salary
--WHERE salay > 50000
--WHERE salay >= 50000
--WHERE salay < 50000
--WHERE salay <= 50000

-- using strings
--WHERE gender = 'female'
--WHERE gender != 'female'

-- working with dates
SELECT *
FROM employee_salary
WHERE birth_date > '2005-01-02'
;

--LOGICAL OPERATORS
-- using AND the conditions has to be true
SELECT *
FROM employee_salary
WHERE birth_date > '2005-01-02'
AND gender = 'male'
;

--OR
-- either of the condition must be true
SELECT *
FROM employee_salary
WHERE birth_date > '2005-01-02'
OR gender = 'male'
;

-- where the first name is sam and his age is greater than 25
SELECT *
FROM employee_salary
WHERE (birth_date > '2005-01-02' 
AND age =20) OR age > 25

--like statement
-- used to find a certain pattern
SELECT *
FROM employee_salary
--ends with year
WHERE birth_date LIKE '2005%'
--begins with year
WHERE birth_date LIKE '%2005'
--find exact 
WHERE birth_date LIKE '%2005%'
