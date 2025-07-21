# string functions
SELECT LENGTH('SKY');

SELECT * 
FROM employee_demographics;



SELECT first_name,
LENGTH(first_name)
FROM employee_demographics
ORDER BY first_name;



SELECT UPPPER('SKY');



SELECT first_name,
UPPER(first_name)
FROM employee_demographics
ORDER BY first_name;




SELECT TRIM('           SKY         ') AS Trim;




SELECT first_name,
LEFT(first_name, 3),
RIGHT(first_name, 3),
SUBSTRING(first_name,2,2),
birth_date,
SUBSTRING(birth_date,6,2) AS Birth_Month
FROM employee_demographics;




SELECT first_name,
REPLACE(first_name,'a','c')
FROM employee_demographics;


SELECT LOCATE('d', 'Aaditya');



SELECT first_name,
LOCATE('AN',first_name)
FROM employee_demographics;



SELECT first_name,
last_name,
CONCAT(first_name,' ',last_name) AS full_Name
FROM employee_demographics;