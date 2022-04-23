---------------------------
factorial using procedure 
---------------------------

SQL> create or replace procedure factp as
  2  i number;
  3  n number;
  4  f number:=1;
  5  begin
  6  n:=&numberplease;
  7  for i in 1..n
  8  loop
  9  f:=f*i;
 10  end loop;
 11  dbms_output.put_line('The factorial of'||n||'is='||f);
 12  end;
 13  /


Enter value for numberplease: 5
old   6: n:=&numberplease;
new   6: n:=5;
Procedure created.


SQL> declare
  2  begin
  3  factp();
  4  end;
  5  /



The factorial of5is=120
PL/SQL procedure successfully completed.