Create Table Salaries(
emp_no INT,
	salary INT,
	
	FOREIGN key (emp_no) REFERENCES Employees(emp_no),
	PRIMARY Key (emp_no)
);