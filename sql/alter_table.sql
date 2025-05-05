/*
* used to select the table that you will add,
delete or modify the columns




**/
ALTER TABLE job_applied
ADD contact VARCHAR (50)

--UPDATE
/*
- used to modify existing data in a table
-SET specifies the column to be updated and the new value of that column
WHERE -filters which rows to be updated based on a condition

*/
UPDATE job_applied
SET contact = "sammy osengo"
WHERE job_id = 1;,

UPDATE job_applied
SET contact = "atieno osengo"
WHERE job_id = 2;,

UPDATE job_applied
SET contact = "sammy manoah"
WHERE job_id = 3;,

UPDATE job_applied
SET contact = "mike osengo"
WHERE job_id = 4;,

UPDATE job_applied
SET contact = "samuel osengo"
WHERE job_id = 5;,

UPDATE job_applied
SET contact = "sammy sanchez"
WHERE job_id = 6;,

--RENAME COLUMN
/*
-renaming a column in an existing table
*need - old column name,
        new column name

        syntax
        ALTER TABLE job_name
        RENAME COLUMN contact TO contact _name

        ALTER COLUMN
        -Used to modify the properties of an existing column in a table
        
*/

