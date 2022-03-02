CREATE TABLE stud(stud_no number(10), stud_name varchar(20),age number (4), grade varchar(10), department varchar(15));

DESC stud;

INSERT INTO stud VALUES (&stud_no,&stud_name,&age,&grade,&department);

SELECT * FROM stud;

CREATE VIEW studview AS SELECT * FROM stud;

SELECT * FROM studview;

DROP VIEW studview; 

CREATE VIEW studview1 AS SELECT * FROM stud WHERE age>=18;

SELECT * FROM studview1;

CREATE table studtable AS (SELECT stud_no,stud_name,department FROM stud);

SELECT * FROM studtable;

CREATE table studtable1 AS (SELECT stud_no,stud_name,department FROM stud WHERE stud_no>102);

SELECT * FROM studtable1;

INSERT INTO stud VALUES(&stud_no,&stud_name,&age,&grade,&department);

SELECT * FROM stud;

SELECT * FROM studview;

CREATE TABLE studnew AS (SELECT stud.stud_no,stud.stud_name,studtable1.department FROM stud,studtable1 WHERE stud.stud_no=studtable1.stud_no);

SELECT * FROM studnew;

/* Question: 
How can I CREATE a SQL table FROM another table without copying any values FROM the old table? */

SQL> CREATE TABLE stud_nodata AS (SELECT * FROM studnew WHERE 1=2);

SQL> DESC stud_nodata;

SQL> SELECT * FROM stud_nodata;
