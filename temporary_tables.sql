-- temporary tables
CREATE TEMPORARY TABLE temp_table
(
    first_name varchar(50),
    last_name varchar(50),
    favorite_movie varchar(100)


);

SELECT *
FROM temp_table

INSERT INTO temp_table
VALUES ('alex', 'manpoah', 'oval')
