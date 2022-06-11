set serveroutput on ;

variable b_basic_percent number; 
variable  b_pf_percent number;
declare
  
 v_today date := sysdate ;
-- v_tomorrow v_today%type ;
begin
  :b_basic_percent := 45;
  :b_pf_percent := 12;

--v_tomorrow := v_today + 1 ;
--DBMS_OUTPUT.PUT_LINE('Hello World');
--dbms_output.put_line('TODAY IS' || ' '|| v_today );
--dbms_output.put_line('TOMORROW IS' || ' ' || v_tomorrow );
END;
/
print b_basic_percent ;
print b_pf_percent ;