--------------------------
factorial using function
--------------------------

SQL> create or replace function fact(n number) return number is f number:=1;
  2  begin
  3  for i in 1..n
  4  loop
  5  f:=f*i;
  6  end loop;
  7  return(f);
  8  end;
  9  /

Function created.

SQL> set serveroutput on;
SQL> declare
  2  n number;
  3  f number;
  4  begin
  5  n:=&numberplease;
  6  f:=fact(n);
  7  dbms_output.put_line('The factorial of'||n||'is='||f);
  8  end;
  9  /