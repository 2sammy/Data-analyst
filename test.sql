/* first querry 
using sqliteviz database about job posting

*/

SELECT *
FROM job_postings_fact

--explation from the above code
SELECT - Identifies the columns (data) from database
FROM Identifies the the table we are connecting to
* - Special command to select all the columns

-- selecting specific columns
SELECT
 job_id,
 job_title,
 job_location
FROM job_postings_fact

--Limit keyword
--its used only to querry a certain amount of rows

SELECT
 job_id,
 job_title,
 job_location
FROM job_postings_fact
Limit 10

-- Distinct keyword\
-Means getting unique rows
    .takes alot of processing power

SELECT DISTINCT
 job_id,
 job_title,
 job_location
FROM job_postings_fact
Limit 10

--Where keyword
    -Sets a condition for the query
    SELECT 
 job_id,
 job_title,
 job_location
FROM job_postings_fact
WHERE job_title = 'Data Analyst'
Limit 10

--ORDER BY keyword
    sorting rows

SELECT 
 job_id,
 job_title,
 job_location
FROM job_postings_fact
WHERE job_title = 'Data Analyst'
ORDER BY job_title
Limit 10

SELECT 
 job_id,
 job_title_short,
 job_location,
 job_via,salary_year_avg
FROM job_postings_fact
where job_title_short = 'Data Engineer'
ORDER BY job_location asc


