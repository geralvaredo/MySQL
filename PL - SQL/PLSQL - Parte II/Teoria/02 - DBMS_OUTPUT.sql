SET SERVEROUTPUT ON
DECLARE
  Myname VARCHAR(20):= 'John';
BEGIN
  Myname := 'Steven';
  DBMS_OUTPUT.PUT_LINE('My name is: '||Myname);
END; 
------------------------------------------------------

SET SERVEROUTPUT ON
DECLARE
   event VARCHAR2(15);
BEGIN
  event := q'!Father's day!';
  DBMS_OUTPUT.PUT_LINE('3rd Sunday in June is : '||event);
  event := q'[Mother's day]';
  DBMS_OUTPUT.PUT_LINE('2nd Sunday in May is : '||event);
END;

---------------------------------------------------------

SET SERVEROUTPUT ON
DECLARE
  bf_var BINARY_FLOAT;
  bd_var BINARY_DOUBLE;
BEGIN
  bf_var := 270/35f;
  bd_var := 140d/0.35;
  DBMS_OUTPUT.PUT_LINE('bf: '|| bf_var);
  DBMS_OUTPUT.PUT_LINE('bd: '|| bd_var);
END;
