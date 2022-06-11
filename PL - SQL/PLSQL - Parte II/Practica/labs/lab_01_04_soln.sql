set serveroutput on ;
declare
 v_today date := sysdate ;
 v_tomorrow v_today%type ;
begin
v_tomorrow := v_today + 1 ;
DBMS_OUTPUT.PUT_LINE('Hello World');
dbms_output.put_line('TODAY IS' || ' '|| v_today );
dbms_output.put_line('TOMORROW IS' || ' ' || v_tomorrow );
END;
