--comparisons
SELECT 
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM job_postings_fact
where job_title_short = 'Data Engineer' AND salary_year_avg> 50000
ORDER BY salary_year_avg asc
 -- comparisons are used within WHERE AND HAVING CLAUSE
 --<> => not equal to

 SELECT 
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM job_postings_fact
where job_via <> 'via Ai-jobs.net'

--using NOT Operater
--<> means NOT

SELECT 
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM job_postings_fact
where job_via <> 'via Ai-jobs.net'


-- those using numerical we can use
-- > greater than < less than >= greater than or equal to

-- we would like to get salary greater than 50000
SELECT 
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM 
    job_postings_fact
where
     salary_year_avg > 50000
order by
    salary_year_avg

SELECT 
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM 
    job_postings_fact
where
     salary_year_avg >= 50000
order by
    salary_year_avg

-- we can as well use < <= on salary
SELECT
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM 
    job_postings_fact
where
     salary_year_avg < 50000
order by
    salary_year_avg
SELECT
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM 
    job_postings_fact
where
     salary_year_avg <= 50000
order by
    salary_year_avg
LIMIT
    10

-- AND operator
/*
    -AND only shows records where all conditions are true
    - can have multiple AND conditions

*/
SELECT
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM 
    job_postings_fact
where
     salary_year_avg > 50000 AND job_title = 'Data Analyst'
order by
    salary_year_avg

-- OR
-- only shows records when any of the conditions are true
SELECT
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM 
    job_postings_fact
where
     salary_year_avg > 50000 OR job_title = 'Data Analyst'
order by
    salary_year_avg

-- BETWEEN 
-- gets values within a given range
-- Alternative to using AND <= >=

SELECT
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM 
    job_postings_fact
where
     salary_year_avg BETWEEN 100000 AND 200000
order by
    salary_year_avg

--IN Specify multiple values in a WHERE statement
 -- alternative of OR

 SELECT
 job_id,
 job_title_short,
 job_location,
 job_via,
 salary_year_avg
FROM 
    job_postings_fact
where
     job_location IN ('Boston', 'Anywhere') AND job_title_short IN ('Data Analyst', 'Data Engineer') 

-- PRACTICE
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
    job_location IN ('Tampa, FL')

select
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE

job_location IN ('Boston, MA', 'Anywhere') AND
(
   ( job_title = 'Data Analyst' AND salary_year_avg > 100000 )
    OR
        (job_title = 'Business Analyst' AND salary_year_avg > 70000)
)







