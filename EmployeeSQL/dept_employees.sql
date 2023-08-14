Create Table Dept_Employees(
emp_no INT,
	dept_no VARCHAR (30),
	
	FOREIGN Key (emp_no) References Employees(emp_no),
	FOREIGN Key (dept_no) References Departments(dept_no),
	Primary key (emp_no, dept_no)
);