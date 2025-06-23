SELECT * 
FROM employee_salary
WHERE salary = 20000;



#LOGICAL OPERATOR AND OR NOT
SELECT * 
FROM employee_demographics
WHERE age = 40
or gender= 'female';



SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%'

