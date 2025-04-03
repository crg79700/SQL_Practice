-- Group By Practice

SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;
# Group By must match with select unless there is an aggregate function 

SELECT first_name
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;


SELECT gender, AVG(age), MAX(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

-- ORDER BY 

SELECT *
FROM parks_and_recreation.employee_demographics
order by first_name ASC
;

SELECT *
FROM parks_and_recreation.employee_demographics
order by first_name DESC
;

SELECT *
FROM parks_and_recreation.employee_demographics
order by gender
;

SELECT *
FROM parks_and_recreation.employee_demographics
order by gender, age
;

SELECT *
FROM parks_and_recreation.employee_demographics
order by gender, age DESC
;

# Below is the incorrect ordering of the order by function. You need to have unique fields and the order of the commands 
# in order by is actually important 
SELECT *
FROM parks_and_recreation.employee_demographics
order by age, gender
;

#You can order by the number of the column in the table, but it is not best practice and not recommended. 
SELECT *
FROM parks_and_recreation.employee_demographics
order by 5, 4
;