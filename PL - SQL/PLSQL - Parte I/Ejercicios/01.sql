
declare

v_variable  number  := 0  ;

cursor c_dept_cursor is
select department_id,department_name from departments;


begin 

for registro in c_dept_cursor 
loop

v_variable := v_variable +1 ;

update DEPARTMENTS

set department_name =  '#' || v_variable || registro.department_name   

where department_id = registro.department_id ;
end loop;



null;
end;
