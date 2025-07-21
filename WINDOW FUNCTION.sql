-- Full Join

SELECT *
		FROM employee_demographics AS dem
		LEFT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id

		UNION

		SELECT *
		FROM employee_demographics AS dem
		RIGHT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id
        ;


-- Group by
SELECT GENDER, AVG(salary)
FROM 
	(SELECT dem.employee_id, dem.first_name, dem.last_name,dem.age,dem.gender,dem.birth_date,sal.occupation,sal.salary,sal.dept_id
		FROM employee_demographics AS dem
		LEFT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id

		UNION

		SELECT sal.employee_id, sal.first_name, sal.last_name,dem.age,dem.gender,dem.birth_date,sal.occupation,sal.salary,sal.dept_id
		FROM employee_demographics AS dem
		RIGHT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id
	) AS all_data
    GROUP BY gender;

-- window function

SELECT first_name, gender, salary, AVG(salary) OVER ( PARTITION BY gender)
FROM 
	(SELECT dem.employee_id, dem.first_name, dem.last_name,dem.age,dem.gender,dem.birth_date,sal.occupation,sal.salary,sal.dept_id
		FROM employee_demographics AS dem
		LEFT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id

		UNION

		SELECT sal.employee_id, sal.first_name, sal.last_name,dem.age,dem.gender,dem.birth_date,sal.occupation,sal.salary,sal.dept_id
		FROM employee_demographics AS dem
		RIGHT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id
	) AS all_data
    ;
    
    
    
    
    SELECT  first_name, gender, salary, SUM(salary) OVER ( PARTITION BY gender ORDER BY employee_id)
FROM 
	(SELECT dem.employee_id, dem.first_name, dem.last_name,dem.age,dem.gender,dem.birth_date,sal.occupation,sal.salary,sal.dept_id
		FROM employee_demographics AS dem
		LEFT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id

		UNION

		SELECT sal.employee_id, sal.first_name, sal.last_name,dem.age,dem.gender,dem.birth_date,sal.occupation,sal.salary,sal.dept_id
		FROM employee_demographics AS dem
		RIGHT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id
	) AS all_data
    ;
    
    
    
    
    
    
        SELECT  first_name, gender, salary, SUM(salary) OVER ( PARTITION BY gender ORDER BY employee_id),
        ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC),
        RANK() OVER(order by salary),
        DENSE_RANK() OVER(order by salary)
FROM 
	(SELECT dem.employee_id, dem.first_name, dem.last_name,dem.age,dem.gender,dem.birth_date,sal.occupation,sal.salary,sal.dept_id
		FROM employee_demographics AS dem
		LEFT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id

		UNION

		SELECT sal.employee_id, sal.first_name, sal.last_name,dem.age,dem.gender,dem.birth_date,sal.occupation,sal.salary,sal.dept_id
		FROM employee_demographics AS dem
		RIGHT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id
	) AS all_data
    ;