VARIABLE basic_percent NUMBER
VARIABLE pf_percent NUMBER

SET SERVEROUTPUT ON
DECLARE
   today DATE:=SYSDATE;
   tomorrow today%TYPE;
BEGIN
   :basic_percent:=45;
   :pf_percent:=12;

   tomorrow:=today +1;
   DBMS_OUTPUT.PUT_LINE(' Hello World ');
   DBMS_OUTPUT.PUT_LINE('TODAY IS : '|| today);
   DBMS_OUTPUT.PUT_LINE('TOMORROW IS : ' || tomorrow);
END;
/
PRINT  basic_percent
PRINT pf_percent

-- You can use a single PRINT command without any parameters to print all 
-- bind variables.




