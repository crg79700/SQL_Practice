-- Temporary Tables
# Temp tables only work when you stay within the session. If you close out of MySQL, the temp table disappears. 

CREATE TEMPORARY TABLE temp_table
(first_name VARCHAR(50),
last_name VARCHAR(50),
favorite_movie VARCHAR(100)
)
;

SELECT * 
FROM temp_table
;

INSERT INTO temp_table
VALUES ('Colin', 'Gardner', 'The Lord of the Rings: Return of the King')
;

SELECT * 
FROM temp_table
;


SELECT *
FROM employee_salary
;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM salary_over_50k
;

