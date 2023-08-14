--List employee information:
SELECT salaries.emp_no, last_name, first_name, sex, salary
FROM employees
	join salaries
	on employees.emp_no = salaries.emp_no;

--List employees hired in 1986:

SELECT first_name, last_name,hire_date
FROM employees
where hire_date BETWEEN '1986-01-01' and '1986-12-31';

-- List Deparment managers:
SELECT dm.dept_no, dm.emp_no, d.dept_name, e.last_name, e.first_name
FROM Dept_Managers AS dm
JOIN Departments AS d ON dm.dept_no = d.dept_no
JOIN Employees AS e ON dm.emp_no = e.emp_no;

--List employee departments:
SELECT de.emp_no, de.dept_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Employees AS de
JOIN Employees AS e ON de.emp_no = e.emp_no
JOIN Departments AS d ON de.dept_no = d.dept_no;

--List employees by name and sex:
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List sales department employees:
SELECT e.emp_no, e.last_name, e.first_name
FROM Employees AS e
JOIN Dept_Employees AS de ON e.emp_no = de.emp_no
JOIN Departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List sales and development department employees:
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e
JOIN Dept_Employees AS de ON e.emp_no = de.emp_no
JOIN Departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

--List employee last name frequencies:
SELECT last_name, COUNT(*) AS frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;


