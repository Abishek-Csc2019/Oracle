SQL> set serveroutput on;
SQL> declare
  2  n number;
  3  x number;
  4  begin
  5  n:=&tablevalue;
  6  x:=&endterm;
  7  for i in 1..x
  8  loop
  9  dbms_output.put_line(i||'*'||n||'='||i*n);
 10  end loop;
 11  end;
 12  /
