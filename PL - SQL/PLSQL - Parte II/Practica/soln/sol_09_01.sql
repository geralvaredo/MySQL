SET SERVEROUTPUT ON

CREATE PROCEDURE greet IS
   today DATE:=SYSDATE;
   tomorrow today%TYPE;
BEGIN
   tomorrow:=today +1;
   DBMS_OUTPUT.PUT_LINE(' Hello World ');
   DBMS_OUTPUT.PUT_LINE('TODAY IS : '|| today);
   DBMS_OUTPUT.PUT_LINE('TOMORROW IS : ' || tomorrow);
END;



