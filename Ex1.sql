/* Table Creation */

CREATE TABLE Department(Dept_ID number(5),Dept_name varchar(20));
CREATE TABLE Employee(Emp_ID number(5), Emp_name varchar(20), Emp_Designation varchar(30));
CREATE TABLE Payment(Emp_ID number(5), Emp_name varchar(20), Salary number(5));
CREATE TABLE Project(Emp_ID number(5), Title varchar(25));

/* Inserting Values into Table */

INSERT INTO Department VALUES (&Dept_ID, &Dept_name);
INSERT INTO Employee VALUES (&Emp_ID, &Emp_name, &Emp_Designation);
INSERT INTO Payment VALUES (&Emp_ID, &Emp_name, &Salary);
INSERT INTO Project VALUES (&Emp_ID, &Title);

/* Selecting Values from Table */

SELECT * FROM Department;
SELECT * FROM Employee;
SELECT * FROM Payment;
SELECT * FROM Project;

/* Altering the table and Adding constraints - PRIMARY KEY */

ALTER TABLE Department add primary key (Dept_ID);
ALTER TABLE Employee add primary key (Emp_ID);
ALTER TABLE Payment add primary key (Emp_ID);
ALTER TABLE Project add primary key (Emp_ID);

/* Altering Table - Changing the Table Name*/
ALTER TABLE Department RENAME TO tbl_Department;
ALTER TABLE tbl_Department RENAME TO Department; /* Revoking to old name */

/* Altering Table - Change the Column Name */
ALTER TABLE tbl_Department RENAME COLUMN Dept_Name TO Name;

/* UPDATE Query */
UPDATE tbl_Department SET Name = 'Finance' WHERE Dept_ID=2040;