-- Drop table if exists
drop table if exists departments;

-- Create table and view column datatypes
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
)
;

-- Drop table if exists
drop table if exists titles;

-- Create table and view column datatypes
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY
	,title VARCHAR	NOT NULL
)
;

-- Drop table if exists
drop table if exists employees;
-- Create table and view column datatypes
CREATE TABLE employees (
emp_no INT PRIMARY KEY
,emp_title_id VARCHAR NOT NULL
,birth_date DATE NOT NULL
,first_name VARCHAR NOT NULL
,last_name VARCHAR NOT NULL
,sex VARCHAR NOT NULL
,hire_date DATE NOT NULL
,FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
)
;

-- Drop table if exists
drop table if exists dept_emp;

-- Create table and view column datatypes
CREATE TABLE dept_emp (
	emp_no INT NOT NULL
	,dept_no VARCHAR NOT NULL
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)
;

-- Drop table if exists
drop table if exists dept_managers;
--Create table and view column datatypes
CREATE TABLE dept_managers(
	dept_no VARCHAR NOT NULL
	,emp_no INT NOT NULL
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)
;

-- Drop table if exists
drop table if exists salaries;

-- Create table and view column datatypes
CREATE TABLE salaries (
	emp_no INT NOT NULL
	,salary INT NOT NULL
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)
;

