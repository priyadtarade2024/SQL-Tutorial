SQL CONSTRAINTS :
===================

NOT NULL  :Ensures that a column cannot have a NULL value.
			Used to enforce that every row must have a value in this column.
			ex:CREATE TABLE Employees (
				EmployeeID INT NOT NULL,
				Name VARCHAR2(100) NOT NULL
			);
		or 
		ALTER TABLE table_name
		MODIFY column_name datatype NOT NULL;


DEFAULT :Assigns a default value to a column if no value is provided during insertion.
		ex:CREATE TABLE Orders (
			OrderID INT NOT NULL,
			OrderDate DATE DEFAULT SYSDATE
		);


CHECK :Ensures that the value in a column meets a specific condition.
		ex:CREATE TABLE Products (
			ProductID INT NOT NULL,
			Price DECIMAL(10, 2) CHECK (Price > 0)
		);

OR
ALTER TABLE table_name
ADD CONSTRAINT check_constraint_name CHECK (column_name > 0);

UNIQUE KEY :It is used in databases to ensure that all values in a column (or a set of columns) are distinct from each other. 
This means that no two rows can have the same value for the column(s) defined as unique.
ex:
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    email VARCHAR2(100) UNIQUE, -- Unique constraint on the email column
    first_name VARCHAR2(50),
    last_name VARCHAR2(50)
);

or
ALTER TABLE table_name
ADD CONSTRAINT unique_constraint_name UNIQUE (column_name);

PRIMARY KEY:
		Uniquely identifies each record in a table.
		A combination of NOT NULL and UNIQUE.
		A table can have only one primary key.

ex:   CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL
);
OR
ALTER TABLE table_name
ADD CONSTRAINT pk_constraint_name PRIMARY KEY (column_name);


FOREIGN KEY:
			Establishes a relationship between two tables.
			The foreign key in one table points to the primary key in another table.
			
	ex: CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DeptID)
);

OR

-- Adding the foreign key constraint using ALTER command
ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

OR

ALTER TABLE table_name
ADD CONSTRAINT fk_constraint_name FOREIGN KEY (column_name) REFERENCES other_table (other_column);


HOW TO DROP A CONSTRAINTS ?
=====================================
-- Drop a PRIMARY KEY Constraint:
ALTER TABLE table_name
DROP CONSTRAINT pk_constraint_name;
