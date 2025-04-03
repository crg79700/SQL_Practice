-- Case Statements

SELECT first_name, 
last_name,
age,
CASE
	WHEN age <= 30 
	THEN 'Young'
END
FROM employee_demographics
;


SELECT first_name, 
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
END
FROM employee_demographics
;

SELECT first_name, 
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS 'Age Bracket'
FROM employee_demographics
;



-- Pay Increase and Bonus
-- < 50000 = 5% Pay Increase
-- > 50000 = 7% Pay Increase
-- Finance = 10% Bonus

SELECT first_name,
last_name,
salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS 'New Salary',
CASE 
	WHEN dept_id = 6 THEN salary * .10
END AS 'Bonus'
FROM employee_salary
;

SELECT * 
FROM employee_salary
;

;