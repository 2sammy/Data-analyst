--involves getting unique values
SELECT first_name, last_name
FROM employee_demogrphics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary


;

--involves getting all values from both tables
SELECT first_name, last_name
FROM employee_demogrphics
UNION ALL
SELECT first_name, last_name
FROM employee_salary


;

--involves multiple joins
SELECT first_name, last_name, "Old Man" as Category
 FROM employee_demogrphics
 WHERE age > 40 AND gender = "Male"

UNION

SELECT first_name, last_name, "Old Lady" as Category
 FROM employee_demogrphics
 WHERE age > 40 AND gender = "FeMale"

UNION

SELECT first_name, last_name, "Highly Paid Employee" as Category
 FROM employee_salary
 WHERE salary > 70000
 ORDER BY first_name, last_name