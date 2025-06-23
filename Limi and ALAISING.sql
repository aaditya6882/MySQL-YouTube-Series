SELECT *
FROM employee_demographics
LIMIT 3,4;


SELECT *
FROM employee_demographics
order by age DESC
LIMIT 2, 1;


-- Aliasing

SELECT gender ,AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age> 40

