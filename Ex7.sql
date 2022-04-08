SQL> set serveroutput on;
SQL> declare
  2  str varchar(10);
  3  rev varchar(10);
  4  begin
  5  str:='&inputstring';
  6  dbms_output.put_line('The given string is'||str);
  7  for i in reverse 1..length(str)
  8  loop
  9  rev:=rev||substr(str,i,1);
 10  end loop;
 11  if(str=rev)then
 12  dbms_output.put_line('The given string is not a palindrome');
 13  end if;
 14  end;
 15  /
