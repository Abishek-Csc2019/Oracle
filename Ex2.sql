 
/* While performing these operations the column name AND data-type should be same on both the tables */

/* Table Creation */
CREATE TABLE tbl_emp (emp_no number(10),emp_name varchar(20),age number(3),salary number(6));
CREATE TABLE emp_new (emp_no number(10),emp_name varchar(20),age number(3),salary number(6));

/* Inserting Values into Table */
INSERT INTO tbl_emp VALUES (&emp_no,&emp_name,&age,&salary);
INSERT INTO emp_new VALUES (&emp_no,&emp_name,&age,&salary);

/* SELECTing Values FROM Table */
SELECT * FROM tbl_emp;
SELECT * FROM emp_new;

/* UNION - Used to combine the result-set of two or more SELECT statements.
No duplicate values are shown */
SELECT * FROM tbl_emp UNION SELECT * FROM emp_new;

/* UNION ALL - Used to combine the result-set of two or more SELECT statements. 
Shows duplicate values also */
SELECT * FROM tbl_emp UNION ALL SELECT * FROM emp_new;

/* INTSERSECT - returns only common rows returned by the two SELECT statements.
Common values are returned */
SELECT * FROM tbl_emp INTERSECT SELECT * FROM emp_new;

/* MINUS - we can say that MINUS operator will return only those 
rows which are unique in only first SELECT query AND 
NOT those rows which are common to both first AND second SELECT queries. */
SELECT * FROM tbl_emp MINUS SELECT * FROM emp_new;

/* Fetches the records with the starting letter 'a' */
SELECT * FROM tbl_emp WHERE emp_name LIKE 'A%';

/* The last character should be 'a' */
SELECT * FROM tbl_emp WHERE emp_name LIKE '%a';

/* CARTESIAN PRODUCT - Fetching the employee names FROM both the tables */
SELECT tbl_emp.emp_name, emp_new.emp_name FROM tbl_emp, emp_new;

/* BETWEEN */
SELECT emp_name FROM tbl_emp WHERE salary BETWEEN 40000 AND 60000;

/* GROUP BY - groups rows that have the same values into summary rows */
SELECT emp_name FROM tbl_emp UNION SELECT emp_name FROM emp_new GROUP BY emp_name;

/* GROUP BY (with aggregate functions) - To find sum of salary */
SELECT emp_name,sum(salary)FROM tbl_emp GROUP BY emp_name;

/* ORDER BY - used to sort the result-set in ascending or descending order. */
SELECT emp_name FROM tbl_emp UNION SELECT emp_name FROM emp_new ORDER BY emp_name;

/* ORDER BY - sort in descending order */
SELECT * FROM tbl_emp ORDER BY emp_name desc;

/* ORDER BY - using different data types */
SELECT emp_name,emp_no FROM tbl_emp WHERE emp_no>102 AND salary>40000;

/* BETWEEN Operator */
SELECT emp_name FROM tbl_emp WHERE emp_no BETWEEN 105 AND 107;

/* BETWEEN Operator - NOT BETWEEN*/
SELECT emp_name FROM tbl_emp WHERE emp_no NOT BETWEEN 105 AND 107;

/* IN Operator */
SELECT emp_name FROM tbl_emp WHERE emp_no IN (105,107);

/* NOT IN Operator */
SELECT emp_name FROM tbl_emp WHERE emp_no NOT IN (105,107);

/* LIKE Operator */
SELECT emp_name,emp_no,salary FROM tbl_emp WHERE salary LIKE '%000';

/* TRUNCATE TABLE */
Truncate TABLE tbl_emp;

/* DESCRIPTION */
DESC tbl_emp;

/* DROP TABLE */
DROP TABLE tbl_emp;
