-- Having vs Where 

#Be careful in the ordering of your commands. The example below cannot work because you haven't selected the gender column
# first and are trying to perform actions on age which hasn't been ordered by gender yet even though you told the program to 
# order by gender first

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
WHERE AVG(age) > 40
GROUP BY gender 
;

# Order like this and you must change to HAVING:

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender 
HAVING AVG(age) > 40
;

# To work on aggregated data you have to use the HAVING clause 
SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;