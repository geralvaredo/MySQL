
declare
TYPE dept_table_type is table of departments.department_name%type 
index by pls_integer;

      f_loop_count number(2) := 10 ; 
      v_deptno    number(4) := 0;
      my_dept_table         dept_table_type ;


begin

  FOR i in 1..f_loop_count  
  loop
  v_deptno := v_deptno + 10;
  select department_name
  into my_dept_table(i)
  from departments 
  where department_id = v_deptno ;
   
  end loop;


DBMS_OUTPUT.PUT_LINE('Department ID '|| ' Country Name ' );


for i in 1..f_loop_count 
loop

DBMS_OUTPUT.PUT_LINE(my_dept_table(i));

end loop;
end;



