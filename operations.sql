   SELECT 
    project_company,
    neid_id,
    neid_role,
    hours_rate AS rate_original,
    hours_rate - 5 AS rate_drop
FROM 
    invoices_fact

   SELECT 
    project_company,
    neid_id,
    neid_role,
    hours_rate AS rate_original,
    hours_rate + 5 AS rate_hike
FROM 
    invoices_fact


--multiplication

   SELECT 
    project_company,
    neid_id,
    neid_role,
    hours_rate,
    hours_spent,
    (hours_rate + 5 ) * hours_spent AS project_total
FROM 
    invoices_fact
WHERE
    rate_hike * hours_spent > 1000 AND
    project_total >2000

    --modulus

SELECT
    activity_id,
    hours_spent,
    hours_spent % 8 extra_hours
FROM
    invoices_fact
WHERE
    hours_spent BETWEEN 8 AND 16
ORDER BY 
    hours_spent

--aggregation functions

--SUM
-- gets the total of a columns
-- adds together all values in aspecific column

SELECT 
    SUM(salary_year_avg) AS salary_sum
FROM    
    job_postings_fact

--COUNT(*)
--Counts the number of rows that match specific criterion
--Gives the total number of rows in the table
SELECT
    SUM(salary_year_avg) AS salary_sum
    COUNT(*) AS count_rows
FROM
    job_postings_fact 

---COUNT(DISTINCT column)   
----gives the distinct count of rows that matches the specified criteria
SELECT
    COUNT(DISTINCT job_title_short) AS job_total
FROM
    job_postings_fact 

select 
    count(distinct job_title_short) AS total_jobs
from
    job_postings_fact

--AVG(salary_year_avg)
-- -average of the column
--- calculates the average value of a numeric column

select
    AVG(salary_year_avg) as salary_avg,
    max(salary_year_avg) as salary_max,
    min(salary_yesr_avg) as salary_min
from
    job_postings_fact
where 
    job_title_short = 'Data Analyst'


-- GROUP BY
/* Groups rows that have the same values into summary rows
e.g " total number of sales by each item"



*/

select
    job_title_short as jobs,
    AVG(salary_year_avg) as salary_avg,
    max(salary_year_avg) as salary_max,
    min(salary_yesr_avg) as salary_min
from
    job_postings_fact
GROUP BY
    job_title_short
ORDER BY salary_avg

--having
/*
filters query based on aggregate functions and groupings
used because you cant use aggregate functions in where

*/

select
    COUNT(job_title_short) AS job_count,
    job_title_short as jobs,
    AVG(salary_year_avg) as salary_avg,
    max(salary_year_avg) as salary_max,
    min(salary_year_avg) as salary_min
from
    job_postings_fact
GROUP BY
    job_title_short
HAVING
    COUNT (job_title_short) >100

ORDER BY salary_avg


--PRACTICE

SELECT
    project_id,
    project_id,
    hours_rate AS rate_original,
    SUM (hours_spent * hours_rate) AS project_original_cost
   SUM (hours_rate *(hours_rate + 6)) project_projected_cost

FROM    
    invoices_fact

GROUP BY 
    project_id
-- null values
/* 
this is afield with no value

*/

select
    job_id,
    job_title_short,
    job_title
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact

WHERE
    salary_year_avg IS NULL

