-- Where Clause

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
;


SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
;


SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

SELECT * 
FROM parks_and_recreation.employee_demographics
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender = 'FEMALE'
;


SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
;

# Logical Operators
# AND, OR, NOT
# PEMDAS applies to the logical operators

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;


SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE Statement
# % or _ 
# % = anything after the characters provided
# _ specifies number of characters. So if you have a name that is 5 letters long and starts with C 
# you put C____. This will return any name that starts with C and has 4 characters following the C. 

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%'
;

# % at the end only means that everything before it must be present first, 
# % in beginning and end means there just needs to be the specific characters in the word

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%'
;

# The underscore makes this command return a name starting with a that is 4 letters long only.
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___'
;

# Percent sign makes this command return a name starting with a that is at least 4 letters long.
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%'
;