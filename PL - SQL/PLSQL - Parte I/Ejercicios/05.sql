
set SERVEROUTPUT ON

declare 

registro EMPLOYEES.SALARY%type ;
empleado employees.last_name%type;
begin 

select min(salary)
into registro 
from EMPLOYEEs
;

select last_name 
into empleado
from employees
where salary = registro ;

dbms_output.put_line( empleado || ' ' || registro) ;

exception 

when no_data_found  then

dbms_output.put_line( 'hola' ) ;

when too_many_rows then 

dbms_output.put_line( 'chau' ) ;

end;




