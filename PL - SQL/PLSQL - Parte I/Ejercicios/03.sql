
set SERVEROUTPUT ON
declare

v_valor number := 1000;
v_modificada varchar2(30) ;

begin 

update Employees
set salary = salary + v_valor 
where hire_date < '01/10/1987 ';

v_modificada := (sql%rowcount || 'filas actualizadas') ;

 dbms_output.put_line(v_modificada) ;

end;