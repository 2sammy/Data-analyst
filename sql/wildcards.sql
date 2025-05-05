-- wildcards
--wildcards - used to subtitute one or more characters
-- wildcards are used with the LIKE operator
-- used in where clause

select
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_title_short LIKE '%Business_Analyst%'
 
 -- aliases  AS

 select
    job_id,
    job_title_short AS job_title
    job_location,
    job_via,
    salary_year_avg AS salary
FROM
    job_postings_fact
WHERE
    job_title_short LIKE '%Analyst%'


    select
    job_id,
    job_title_short AS job_title,
    job_location AS location,
    job_via AS job_sites,
    salary_year_avg AS salary
FROM
    job_postings_fact
WHERE
    job_title_short LIKE '%Analyst%'

    --practice
 select
    job_id,
    job_title,
    job_title_short AS job_title,
    job_location AS location,
    job_via AS job_sites,
    salary_year_avg AS salary
FROM
    job_postings_fact
WHERE
    (job_title LIKE '%Data' OR job_title LIKE '%Business%')
    AND
    job_title LIKE '%Analyst%' AND
    job_title NOT LIKE '%Seniors%'
