SET SERVEROUTPUT ON
DECLARE
  	CURSOR dept_cursor IS
        SELECT department_id,department_name
        FROM	departments
        WHERE department_id < 100
        ORDER BY    department_id;

        CURSOR emp_cursor(v_deptno NUMBER) IS
        SELECT last_name,job_id,hire_date,salary
        FROM	employees
        WHERE	department_id = v_deptno
        AND employee_id < 120;

	current_deptno departments.department_id%TYPE;
        current_dname  departments.department_name%TYPE;
        ename employees.last_name%TYPE;
        job employees.job_id%TYPE;	
	hiredate employees.hire_date%TYPE;
	sal employees.salary%TYPE;
       
BEGIN
 	OPEN dept_cursor;
    	 LOOP
    		 FETCH dept_cursor INTO current_deptno,current_dname;
		 EXIT WHEN dept_cursor%NOTFOUND;
		 DBMS_OUTPUT.PUT_LINE ('Department Number : ' ||  current_deptno ||  '  Department Name : ' || current_dname);
  
		IF emp_cursor%ISOPEN THEN
        		CLOSE emp_cursor;
      		END IF;
      	                OPEN emp_cursor (current_deptno);
     		 LOOP
       			FETCH emp_cursor INTO  ename,job,hiredate,sal;
			EXIT WHEN emp_cursor%NOTFOUND;
                        DBMS_OUTPUT.PUT_LINE (ename || '    ' ||  job || '   '  ||  hiredate || '   ' ||  sal);       	
                     
     		 END LOOP;
 DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------');
		 CLOSE emp_cursor;
   		
   	 END LOOP;
    	 
    	CLOSE dept_cursor;
END;

