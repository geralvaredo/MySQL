
SET SERVEROUTPUT ON
DECLARE 
	TYPE Table_Ename is table of employees.last_name%TYPE
	INDEX  BY BINARY_INTEGER;
	TYPE Table_dept  is table of employees.department_id%TYPE
	INDEX  BY BINARY_INTEGER;
	Tename  Table_Ename;
	Tdept  Table_dept;
	i  BINARY_INTEGER :=0;
	CURSOR Namedept IS SELECT last_name,department_id from employees
        WHERE employee_id < 115;
        TRACK NUMBER := 15;
BEGIN 
	
  	FOR emprec in Namedept
		LOOP
		i := i +1;
		Tename(i) := emprec.last_name;
                Tdept(i) := emprec.department_id;           
	END LOOP;
	FOR i IN 1..TRACK
 		 LOOP
   		 DBMS_OUTPUT.PUT_LINE ('Employee Name: ' || Tename(i) || 
                 ' Department_id: ' || Tdept(i));
 	 END LOOP;
END;
/
SET SERVEROUTPUT OFF