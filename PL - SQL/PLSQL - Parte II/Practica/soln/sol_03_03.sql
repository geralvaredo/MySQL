-- VARIABLE basic_percent NUMBER
-- VARIABLE pf_percent NUMBER

SET SERVEROUTPUT ON
DECLARE
   today DATE:=SYSDATE;
   tomorrow today%TYPE;
   fname VARCHAR2(15);
   emp_sal NUMBER(10);
BEGIN
   /*:basic_percent:=45;
   :pf_percent:=12; */
   SELECT first_name, salary INTO fname, emp_sal
   FROM employees WHERE employee_id=110;
   tomorrow:=today +1;
   DBMS_OUTPUT.PUT_LINE(' Hello '|| fname);
   /*DBMS_OUTPUT.PUT_LINE('TODAY IS : '|| today);
     DBMS_OUTPUT.PUT_LINE('TOMORROW IS : ' || tomorrow); */
     DBMS_OUTPUT.PUT_LINE('YOUR SALARY IS : '||emp_sal);
     DBMS_OUTPUT.PUT_LINE('YOUR CONTRIBUTION TOWARDS PF: 
     '||emp_sal*:basic_percent/100*:pf_percent/100);
END;
/
-- PRINT  basic_percent
-- PRINT pf_percent



