 set serveroutput on ;
declare
v_max_deptno number ;
begin 
select max(department_id)
into v_max_deptno 
from DEPARTMENTS ;

DBMS_OUTPUT.PUT_LINE('The Maximus department_id is ' || ' ' || v_max_deptno);


end;