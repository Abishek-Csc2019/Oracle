/* Table Creation */
CREATE TABLE emp_des (name varchar(20),branch varchar(15),city varchar(10));
CREATE TABLE emp (emp_id number(3),emp_name varchar(10),salary number(6));

/* Inserting Values into Table */
INSERT INTO emp_des VALUES (&name, &branch, &city);
INSERT INTO emp VALUES (&emp_id, &emp_name, &salary);

/* Selecting the values from the table */
SELECT * FROM emp_des;
SELECT * FROM emp;

/* NATURAL JOIN */
SELECT * FROM emp NATURAL JOIN emp_des;
SELECT * FROM emp_des NATURAL JOIN emp;

/* INNER JOIN */
SELECT * FROM emp INNER JOIN emp_des ON emp.emp_name = emp_des.name;

/* LEFT OUTER JOIN */
SELECT * FROM emp LEFT OUTER JOIN emp_des on emp.emp_name = emp_des.name;

/* RIGHT OUTER JOIN */
SELECT * FROM emp RIGHT OUTER JOIN emp_des on emp.emp_name <> emp_des.name;

/* FULL OUTER JOIN */
SELECT * FROM emp FULL OUTER JOIN emp_des on emp.emp_name = emp_des.name;
