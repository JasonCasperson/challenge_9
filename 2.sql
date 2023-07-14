SELECT first_name,
		last_name,
		hire_date
		FROM employees
		WHERE DATE_PART('YEAR',employees.hire_date) = 1986