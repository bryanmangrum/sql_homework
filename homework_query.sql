
--List the following details of each employee: employee number, last name, first name, sex, and salary.
select a.emp_no
	,last_name
	,first_name
	,sex
	,b.salary
from employees as a
inner join salaries as b
on a.emp_no = b.emp_no
;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name
	,last_name
	,hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select a.dept_no
	,b.dept_name
	,c.emp_no
	,last_name
	,first_name
from dept_managers as a
join departments as b
on a.dept_no = b.dept_no
join employees as c
on a.emp_no = c.emp_no
;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select c.emp_no
	,last_name
	,first_name
	,b.dept_name
from dept_emp as a
join departments as b
on a.dept_no = b.dept_no
join employees as c
on a.emp_no = c.emp_no
-- full outer join dept_managers as d
-- on d.emp_no = c.emp_no
-- and d.dept_no = b.dept_no
;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name
	,last_name
	,sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'
;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select a.emp_no
	,last_name
	,first_name
	,dept_name
from employees as a
join dept_emp as b
on a.emp_no = b.emp_no
join departments as c
on b.dept_no = c.dept_no
where dept_name like '%Sales%'
;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select a.emp_no
	,last_name
	,first_name
	,dept_name
from employees as a
join dept_emp as b
on a.emp_no = b.emp_no
join departments as c
on b.dept_no = c.dept_no
where dept_name in ('Sales', 'Development')
;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select count(last_name) as name_counts
	,last_name
from employees
group by last_name
order by count(last_name) DESC
;
















