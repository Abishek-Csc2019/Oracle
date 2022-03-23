CREATE TABLE faculty (staff_id number(5),name varchar(10),dept_name varchar(7),salary number(6));

INSERT INTO faculty VALUES (&staff_id, &name, &dept_name, &salary);

SELECT * FROM faculty;

CREATE TABLE depart (dept_name varchar(7),building varchar(6),budget number (7));

INSERT INTO depart VALUES (&dept_name, &building, &budget);

SELECT * FROM depart;

/* UPDATE faculty SET dept_name='Physics' WHERE name='Srini'; */

SELECT * FROM faculty;

SELECT dept_name,avg_salary FROM (SELECT dept_name,avg(salary) AS Avg_salary FROM faculty GROUP BY dept_name) WHERE avg_salary>40000;

SELECT name FROM faculty WHERE salary > all(SELECT salary FROM faculty WHERE dept_name='Physics');

SELECT * FROM faculty;

SELECT name FROM faculty WHERE salary > all(SELECT salary FROM faculty WHERE dept_name='Physics' AND name='Kishore');

SELECT name FROM faculty WHERE salary > some (SELECT salary FROM faculty WHERE dept_name='Physics');

SELECT * FROM faculty;

DELETE FROM faculty WHERE salary<(SELECT avg(salary) FROM faculty);

SELECT * FROM faculty;
