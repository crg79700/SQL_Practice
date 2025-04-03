 -- Limit & Aliasing 
 
 
 -- Limit 
 SELECT * 
 FROM parks_and_recreation.employee_demographics
 LIMIT 3
 ;
 
SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;

# This will start at position two and then go 1 row ahead of that position

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

-- Aliasing
# AS causes a name to change

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
; 