

SET SERVEROUTPUT ON
DECLARE
   TYPE dept_table_type is table of departments.department_name%TYPE 
   INDEX BY PLS_INTEGER;
   my_dept_table   dept_table_type;
   loop_count	   NUMBER (2):=10;
   deptno          NUMBER (4):=0;
BEGIN

  FOR i IN 1..loop_count
  LOOP	
        deptno:=deptno+10;
	SELECT department_name
	INTO my_dept_table(i)
	FROM departments
	WHERE department_id = deptno;
  END LOOP;
 FOR i IN 1..loop_count
  LOOP
    DBMS_OUTPUT.PUT_LINE (my_dept_table(i));
  END LOOP;
END;



