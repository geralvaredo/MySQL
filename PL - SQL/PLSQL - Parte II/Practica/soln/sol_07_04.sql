SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT emp_id PROMPT 'Please enter your employee number';
ACCEPT emp_deptid PROMPT 'Please enter the department number for which salary revision is being done';

DECLARE
   emp_authorization NUMBER(5);
   emp_id NUMBER(5):=&emp_id;
   emp_deptid NUMBER(6):=&emp_deptid;
   no_such_employee EXCEPTION;

-- INCLUDE EXECUTABLE SECTION OF OUTER BLOCK HERE

BEGIN
   SELECT employee_id into emp_authorization FROM 
   employee_details WHERE department_id=(SELECT department_id    
   FROM departments WHERE department_name='Human Resources');

-- RAISE EXCEPTION HERE

-- INCLUDE SIMPLE IF STATEMENT HERE
  IF (emp_id=emp_authorization) THEN

  DECLARE    
    emp_sal  employee_details.salary%TYPE;
    emp_fname    employee_details.first_name%TYPE;
    emp_lname    employee_details.last_name%TYPE;
    i NUMBER:=1;
 
-- DECLARE AN INDEX BY TABLE OF TYPE VARCHAR2(50). CALL IT ename_table_type

TYPE ename_table_type IS TABLE OF
    VARCHAR2(50) INDEX BY PLS_INTEGER;

-- DECLARE A VARIABLE ename_table OF TYPE ename_table_type
	
    ename_table    ename_table_type; 

    c_hike1 constant real :=.20;
    c_hike2 constant real :=.15;
    c_hike3 constant real :=.08;
    c_hike4 constant real :=.03;

    c_range1 constant number :=6500;
    c_range2 constant number :=9500;
    c_range3 constant number :=12000;

-- DECLARE A CURSOR CALLED emp_records TO HOLD salary, first_name, and last_name of employees

   CURSOR emp_records IS SELECT salary,first_name,last_name 
   FROM employee_details WHERE department_id=emp_deptid 
   FOR UPDATE;

-- INCLUDE EXECUTABLE SECTION OF INNER BLOCK HERE
  BEGIN
   IF (emp_deptid NOT IN (20,60,80,100,110)) THEN
   DBMS_OUTPUT.PUT_LINE ('SORRY, NO SALARY REVISIONS FOR 
   EMPLOYEES IN THIS DEPARTMENT'); 
    ELSE   
      OPEN emp_records;
    LOOP
      FETCH emp_records INTO emp_sal,emp_fname,emp_lname;
      EXIT WHEN emp_records%NOTFOUND;
  CASE 
      WHEN   emp_sal<c_range1 THEN
      ename_table(i):=emp_fname||' '||emp_lname; 
      i:=i+1;
      UPDATE employee_details SET salary=emp_sal +  (emp_sal*c_hike1) 
      WHERE CURRENT OF emp_records;
      WHEN   emp_sal<c_range2 THEN
       ename_table(i):=emp_fname||' '||emp_lname;
       i:=i+1;
       UPDATE employee_details SET salary=emp_sal+(emp_sal*c_hike2)
       WHERE CURRENT OF emp_records;
      WHEN (emp_sal<c_range3) THEN
       ename_table(i):=emp_fname||' '||emp_lname;
       i:=i+1;
       UPDATE employee_details SET salary=emp_sal+(emp_sal*c_hike3)
       WHERE CURRENT OF emp_records;
      ELSE
      ename_table(i):=emp_fname||' '||emp_lname;
      i:=i+1;
       UPDATE employee_details SET salary=emp_sal+(emp_sal*c_hike4)
       WHERE CURRENT OF emp_records;
      END CASE;
  END LOOP;

  DBMS_OUTPUT.PUT_LINE ('NUMBER OF RECORDS MODIFIED :  
  '||emp_records%ROWCOUNT);

  CLOSE emp_records;
 DBMS_OUTPUT.PUT_LINE ('The following employees'' salaries are  
 updated');
 FOR i IN ename_table.FIRST..ename_table.LAST 
  LOOP
     DBMS_OUTPUT.PUT_LINE(ename_table(i));
  END LOOP;


 
-- CLOSE THE INNER BLOCK

  END IF;
 END;

ELSE
 DBMS_OUTPUT.PUT_LINE ('SORRY YOU ARE NOT AUTHORIZED TO USE 
 THIS APPLICATION');
END IF;

-- INCLUDE EXCEPTION SECTION FOR OUTER BLOCK

-- CLOSE THE OUTER BLOCK