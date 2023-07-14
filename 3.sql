SELECT mn.dept_number,mn.emp_no,d.dept_name,e.emp_no,e.first_name,e.last_name
FROM dept_manager mn
JOIN employees e 
ON (e.emp_no = mn.emp_no)
JOIN departments d 
ON (mn.dept_number = d.dept_no)
