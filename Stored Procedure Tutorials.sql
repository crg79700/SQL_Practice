-- Stored Procedures

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

USE parks_and_recreation
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

CALL large_salaries()
;

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ; 


CALL large_salaries2()
;



-- Parameter
# naming conventions for parameters is to use variable name_param or p_variable name
DELIMITER $$
CREATE PROCEDURE large_salaries3(p_employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = p_employee_id
    ;
END $$
DELIMITER ; 

CALL large_salaries3(1)
;
