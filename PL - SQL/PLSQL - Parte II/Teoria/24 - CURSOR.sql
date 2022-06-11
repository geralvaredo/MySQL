SET SERVEROUTPUT ON
DECLARE
  CURSOR emp_cursor IS 
   SELECT employee_id, last_name FROM employees
   WHERE department_id =30;
  empno employees.employee_id%TYPE;
  lname employees.last_name%TYPE;
BEGIN
  OPEN emp_cursor;
  FETCH emp_cursor INTO empno, lname;
  DBMS_OUTPUT.PUT_LINE( empno ||'  '||lname);  
END;

---------------------------------------------------

SET SERVEROUTPUT ON
DECLARE
  empno	employees.employee_id%TYPE;
  ename	employees.last_name%TYPE;
  CURSOR emp_cursor IS SELECT employee_id,  last_name FROM 
   employees;
BEGIN
  OPEN emp_cursor;
  LOOP
   FETCH emp_cursor INTO empno, ename;
   EXIT WHEN emp_cursor%ROWCOUNT > 10 OR  
                     emp_cursor%NOTFOUND;        
   DBMS_OUTPUT.PUT_LINE(TO_CHAR(empno) 
                       ||' '|| ename);
  END LOOP;
  CLOSE emp_cursor;
END ;

---------------------------------------------------------

SET SERVEROUTPUT ON
DECLARE
  CURSOR emp_cursor IS 
   SELECT employee_id, last_name FROM employees
   WHERE department_id =30;
  empno employees.employee_id%TYPE;
  lname employees.last_name%TYPE;
BEGIN
  OPEN emp_cursor;
  LOOP
    FETCH emp_cursor INTO empno, lname;
    EXIT WHEN emp_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE( empno ||'  '||lname);
    
  END LOOP;
END;


---------------------------------------------------------

SET SERVEROUTPUT ON
DECLARE
  CURSOR emp_cursor IS 
   SELECT employee_id, last_name FROM employees
   WHERE department_id =30;
 
BEGIN
   FOR emp_record IN emp_cursor 
     LOOP
       DBMS_OUTPUT.PUT_LINE( emp_record.employee_id ||' 
       '||emp_record.last_name);   
     END LOOP; 
END;



--------------------------------------------------------

DROP TABLE temp_list;
CREATE TABLE temp_list (empid NUMBER(10) NOT NULL, empname VARCHAR2(25) NOT NULL);
DECLARE
      CURSOR emp_cursor IS SELECT employee_id, last_name
        FROM   employees;
      emp_record emp_cursor%ROWTYPE;
BEGIN
      OPEN emp_cursor;
      LOOP
        FETCH emp_cursor INTO emp_record;
        EXIT WHEN emp_cursor%NOTFOUND;
        INSERT INTO temp_list (empid, empname)
        VALUES (emp_record.employee_id, emp_record.last_name);
      END LOOP;
      CLOSE emp_cursor;
END;

------------------------------------------------------------------------------

SET SERVEROUTPUT ON
DECLARE
  CURSOR emp_cursor (deptno NUMBER) IS
   SELECT employee_id, last_name
   FROM   employees
   WHERE  department_id = deptno;    
BEGIN
   DBMS_OUTPUT.PUT_LINE('Printing employee number and last names of  
   employees working in department number 10');
   FOR emp_record IN emp_cursor (10)
      LOOP
      DBMS_OUTPUT.PUT_LINE( emp_record.employee_id || ' ' || 
      emp_record.last_name);
      END LOOP;

   DBMS_OUTPUT.PUT_LINE('Printing employee number and last names of  
   employees working in department number 20');
   FOR emp_record IN emp_cursor (20)
      LOOP
      DBMS_OUTPUT.PUT_LINE( emp_record.employee_id || ' ' || 
      emp_record.last_name);
      END LOOP;      
END;

