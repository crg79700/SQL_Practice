-- Joins

-- Inner Joins
SELECT * 
FROM parks_and_recreation.employee_demographics
; 

SELECT * 
FROM parks_and_recreation.employee_salary
; 


SELECT * 
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
; 

SELECT dem.employee_id, age, occupation 
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
; 

-- Outer Joins

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
LEFT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
; 

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
; 

-- Self Join 

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining Multiple Tables Together 

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
;
    
SELECT *
FROM parks_and_recreation.parks_departments
;

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;