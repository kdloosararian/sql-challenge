Drop table Dept_Managers;

Create Table Dept_Managers(
dept_no CHAR(4),
	emp_no INT,

	FOREIGN key (dept_no) REFERENCES Departments(dept_no),
	FOREIGN Key (emp_no) REFERENCES Employees(emp_no),
	PRIMARY Key (dept_no, emp_no)
);

