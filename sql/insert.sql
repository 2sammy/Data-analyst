---insert into
-- used to insert data into a table
--values -specify data you want to add
INSERT INTO table_name (column_name1, column_name2)
VALUES(value1,value2);

INSERT INTO job_applied(
     job_id ,
    apllication_sent,
    custom_resume,
    resume_filename,
    cover_letter,
    cover_letter_file_name,
    status
)
VALUES(
    1,
    '2025-02-01',
    true,
    'resume_01.pdf',
    true,
    'cover_letter_01.pdf',
    'submitted'

),
VALUES(
    2,
    '2025-02-02',
    true,
    'resume_02.pdf',
    true,
    'cover_letter_02.pdf',
    'submitted'

),
VALUES(
    3,
    '2025-02-01',
    true,
    'resume_03.pdf',
    true,
    'cover_letter_03.pdf',
    'submitted'

),
VALUES(
    4,
    '2025-02-02',
    true,
    'resume_04.pdf',
    true,
    'cover_letter_04.pdf',
    'submitted'

),
VALUES(
    5,
    '2025-02-01',
    true,
    'resume_05.pdf',
    true,
    'cover_letter_05.pdf',
    'submitted'

),
VALUES(
    6,
    '2025-02-01',
    true,
    'resume_06.pdf',
    true,
    'cover_letter_06.pdf',
    'submitted'

)