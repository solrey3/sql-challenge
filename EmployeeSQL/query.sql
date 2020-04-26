-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, last_name, first_name, sex, salary
from employees
inner join salaries
on employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date < '1/1/1987' AND hire_date >= '1/1/1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
inner join departments as d
on dm.dept_no = d.dept_no
inner join employees as e
on dm.emp_no = e.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
inner join departments as d
on de.dept_no = d.dept_no
inner join employees as e
on de.emp_no = e.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
inner join departments as d
on de.dept_no = d.dept_no
inner join employees as e
on de.emp_no = e.emp_no
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
inner join departments as d
on de.dept_no = d.dept_no
inner join employees as e
on de.emp_no = e.emp_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) AS count_frequency
from employees
group by last_name
order by count_frequency desc;

select *
from employees
where emp_no = 499942;