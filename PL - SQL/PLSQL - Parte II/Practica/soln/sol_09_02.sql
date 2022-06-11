

SET SERVEROUTPUT ON

DROP PROCEDURE greet;
CREATE PROCEDURE greet(name VARCHAR2) IS
   today DATE:=SYSDATE;
   tomorrow today%TYPE;
BEGIN
   tomorrow:=today +1;
   DBMS_OUTPUT.PUT_LINE(' Hello '|| name);
   DBMS_OUTPUT.PUT_LINE('TODAY IS : '|| today);
   DBMS_OUTPUT.PUT_LINE('TOMORROW IS : ' || tomorrow);
END;






