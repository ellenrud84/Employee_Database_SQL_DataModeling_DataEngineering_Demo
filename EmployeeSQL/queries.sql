--queries:
--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e, salaries as s
where e.emp_no = s.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, extract('year' from hire_date)
from employees
where extract('year' from hire_date) = 1986;

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
from employees as e, dept_manager as dm, departments as d
where d.dept_no = dm.dept_no and dm.emp_no = e.emp_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de, employees as e, departments as d
where d.dept_no = de.dept_no and e.emp_no = de.emp_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d, dept_emp as de
where d.dept_name = 'Sales' and e.emp_no= de.emp_no and de.dept_no = d.dept_no;

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d, dept_emp as de
where d.dept_name = 'Sales' and e.emp_no= de.emp_no and de.dept_no = d.dept_no
or d.dept_name = 'Development' and e.emp_no= de.emp_no and de.dept_no = d.dept_no;


--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select e.last_name, count(e.last_name)as name_count
from employees as e
group by last_name
order by name_count desc;