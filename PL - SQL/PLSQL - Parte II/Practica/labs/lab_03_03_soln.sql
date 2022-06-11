set serveroutput on ;

--variable b_basic_percent number; 
--variable  b_pf_percent number;
declare
 b_basic_percent number := 45 ; 
 b_pf_percent number := 12;

v_fname  varchar2(15) ;
v_emp_sal number(10) ;
  
 v_today date := sysdate ;
-- v_tomorrow v_today%type ;
begin
 
 select FIRST_NAME ,salary 
 into v_fname, v_emp_sal
 from employees 
 where employee_id = 110;
 
 --dbms_output.put_line('NOMBRE' || ' ' || v_fname );
 DBMS_OUTPUT.PUT_LINE('Hello' || ' ' || v_fname);
 dbms_output.put_line('SALARIO' || ' ' || v_emp_sal || ' ' || 'PF : ' || (v_emp_sal * 0.45) * 0.12   );
 
 
 
 
 
  --:b_basic_percent := 45;
  --:b_pf_percent := 12;

--v_tomorrow := v_today + 1 ;
--DBMS_OUTPUT.PUT_LINE('Hello World');
--dbms_output.put_line('TODAY IS' || ' '|| v_today );
--dbms_output.put_line('TOMORROW IS' || ' ' || v_tomorrow );
END;
--/
--print b_basic_percent ;
--print b_pf_percent ;