SELECT *
FROM employee_demographics;


SELECT  gender ,avg(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender;

# --order By
SELECT *
FROM employee_demographics
ORDER BY gender,
age;





#--Having vs Where

SELECT  gender ,avg(age)
FROM employee_demographics
group by gender
HAVING avg(age) >40;




SELECT  occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>75000;