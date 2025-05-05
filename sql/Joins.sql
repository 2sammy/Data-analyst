/**
left joins means it gonna return what
all elements from table A and the one 
matches from table B
***/

SELECT 
 job_postings.job_id,
 job_postings.job_title_short,
 job_postings.company_id,
 companies.company_id,
 companies.name

FROM job_postings_fact AS job_postings
LEFT JOIN company_dim AS companies
ON job_postings.company_id = companies.company_id
-- RIGHT JOIN

SELECT 
 job_postings.job_id,
 job_postings.job_title_short,
 job_postings.company_id,
 companies.company_id,
 companies.name

FROM job_postings_fact AS job_postings
RIGHT JOIN company_dim AS companies
ON job_postings.company_id = companies.company_id

/*
Full order of execution
    FROM/JOIN
-specifies the tables to retrieve data from and to join them

    where
-Filters rows based on conditions
*/


/*
INSERT INTO
insert into pupilstable (column1, column2)
values (value1, value2)
# INSERT INTO statement is used to insert new records in a table
    INSERT INTO table_name (column1, column2, column3, ...)
    VALUES (value1, value2, value3, ...);

    or adding values for all the columns of the table
    INSERT INTO table_name
VALUES (value1, value2, value3, ...);


*/
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- inserting data in specific columns
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

--inserting multiple rows

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK')

