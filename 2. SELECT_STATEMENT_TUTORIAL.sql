SELECT * FROM parks_and_recreation.employee_demographics;
SELECT first_name,
last_name,
birth_date,
age,
# PEMDAS
(age*10)+10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name
FROM parks_and_recreation.employee_demographics;

SELECT  gender
FROM parks_and_recreation.employee_demographics;
#DISTINCT 
SELECT  DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT  DISTINCT gender,
first_name

FROM parks_and_recreation.employee_demographics;