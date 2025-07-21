SELECT first_name,
last_name,
age,
CASE
	WHEN age<30 THEN 'young'
    WHEN age BETWEEN 30 and 60 THEN 'average age'
    WHEN age>60 THEN 'old'
END AS age_bracket
FROM employee_demographics;

# salary increase rate and bonus
-- < 50000= 5%
-- >=50000=7%
-- finance=  10% bonus



SELECT CONCAT(first_name,' ', last_name) AS full_Name,
salary,
CASE
	WHEN salary<50000 THEN salary + (0.05*salary)
    WHEN salary>=50000 THEN salary + (0.07*salary)
END AS new_salary,
CASE
	WHEN dept_id=6 THEN (0.1*salary)
END AS bonus
FROM employee_salary;