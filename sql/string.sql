-- String functions

--Length
SELECT first_name, LENGTH(first_name)
FROM empployee_demographics
ORDER BY 2
;

--Upper/ lower
SELECT first_name, UPPER(first_name)
FROM empployee_demographics
ORDER BY 2
;
SELECT first_name, LOWER(first_name)
FROM empployee_demographics
ORDER BY 2
;