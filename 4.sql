SELECT d.dept_no,d.dept_name,de.emp_no,e.last_name,e.first_name
FROM departments d 
JOIN dept_emp de ON (de.dept_no = d.dept_no)
JOIN employees e ON (e.emp_no = de.emp_no);
