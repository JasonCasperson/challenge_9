-- One to one
-- Simpson table
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments(
  dept_no CHAR(100) PRIMARY KEY,
  dept_name CHAR(100)	
);

CREATE TABLE titles(
	title_id CHAR(100) PRIMARY KEY,
	title CHAR(100)
);

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	title_id CHAR(100),
	FOREIGN KEY(title_id) REFERENCES titles(title_id),
	birth_date DATE,
	first_name CHAR(100),
	last_name CHAR(100),
	Sex CHAR(100),
	hire_date DATE
);
-- One to Many
-- Address Table
CREATE TABLE dept_emp(
  emp_no INTEGER,
  dept_no CHAR(100),
  FOREIGN KEY(emp_no) References employees(emp_no),
  FOREIGN KEY(dept_no) References departments(dept_no),
  PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE dept_manager(
  emp_no INTEGER,
  dept_no CHAR(100),
  FOREIGN KEY(emp_no) References employees(emp_no),
  FOREIGN KEY(dept_no) References departments(dept_no),
  PRIMARY KEY(emp_no,dept_no)
);


CREATE TABLE salaries(
	emp_no INTEGER,
	FOREIGN KEY(emp_no) References employees(emp_no),
	salary FLOAT
);



		
	


