declare

cursor c_dept_cursor is
select department_id ,department_name
from departments 
where department_id < 100 ;

cursor c_emp_cursor (vnum_dept employees.DEPARTMENT_ID%type) is
select last_name,job_id,hire_date ,salary
from employees
where department_id = vnum_dept and employee_id < 120;

  
v_dept_id departments.department_id%type ;
/*v_dept_name DEPARTMENTS.DEPARTMENT_NAME%type ;
v_emp_LastName EMPLOYEES.LAST_NAME%type ;
v_emp_jobId EMPLOYEES.JOB_ID%type ;
v_emp_hire employees.hire_date%type ;
v_emp_salary employees.salary%type ;
*/
registro c_dept_cursor%rowtype ;
empleado c_emp_cursor%rowtype;
begin 



for registro in c_dept_cursor 
loop
dbms_output.put_line('Department number: ' || registro.department_id || ' Department Name ' || registro.department_name );

for empleado in c_emp_cursor(registro.department_id) 
loop
dbms_output.put_line( empleado.last_name || ' '  || empleado.job_id || ' '|| empleado.hire_date || ' ' || empleado.salary);
end loop ;

end loop;

/*loop
fetch c_dept_cursor in v_dept_id, v_dept_name
  exit when c_dept_cursor%notfound;
end loop;
*/

end ;
