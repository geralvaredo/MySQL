SET SERVEROUTPUT ON
DECLARE
  Myname VARCHAR(20);
BEGIN
  DBMS_OUTPUT.PUT_LINE('My name is: '||Myname);
  Myname := 'John';
  DBMS_OUTPUT.PUT_LINE('My name is: '||Myname);
END;


---------------------------------------------

drop function check_sal;

---------------------------------------------

drop table dept;
drop procedure add_dept;
