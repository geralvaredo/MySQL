set SERVEROUTPUT ON
declare
v_deptno number := 80;

cursor c_emp_cursor is
select last_name,salary,manager_id
from employees
where department_id = v_deptno;

begin

  for emp_reg in c_emp_cursor loop  
  if emp_reg.salary < 5000 and emp_reg.manager_id in (101,124) then
  SYS.dbms_output.put_line(emp_reg.last_name || 'due for a raise');
  else
  SYS.DBMS_OUTPUT.PUT_LINE(emp_reg.last_name || ' ' || 'not due for a raise') ;
  
  END IF;
  end loop;



end;