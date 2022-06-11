 set serveroutput on ;
declare
v_max_deptno number ;
v_dept_name departments.department_name%type := 'Education' ;
v_dept_id number ;
v_rows_deleted varchar2(20) ;
begin 
select max(department_id)
into v_max_deptno 
from DEPARTMENTS ;

DBMS_OUTPUT.PUT_LINE('The Maximus department_id is ' || ' ' || v_max_deptno);

v_dept_id := v_max_deptno + 10 ;

insert into DEPARTMENTS
(department_id,department_name,location_id)
values(v_dept_id,v_dept_name,null);

dbms_output.put_line (sql%rowcount || ' filas afectadas. ') ;
/*
select * 
from DEPARTMENTS
where department_id = 280;

*/

end;




