SELECT * 
FROM employee_demographics;
SELECT * 
FROM parks_departments;


SELECT * 
FROM employee_demographics
WHERE employee_id IN 
					(SELECT employee_id 
						FROM employee_salary 
                        WHERE dept_id=1
					)
;




SELECT first_name, birth_date, 
(SELECT department_name
FROM parks_departments
WHERE department_id=1) 
FROM employee_demographics;




