SELECT d.dept_name,e.emp_no,e.last_name,e.first_name FROM departments d
JOIN dept_emp de on (de.dept_no = d.dept_no)
JOIN employees e ON (de.emp_no = e.emp_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';