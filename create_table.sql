CREATE TABLE job_applied (
    job_id INT,
    apllication_sent DATE,
    custom_resume BOOLEAN,
    resume_filename VARCHAR(255),
    cover_letter BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR
);

SELECT *
FROM job_applied