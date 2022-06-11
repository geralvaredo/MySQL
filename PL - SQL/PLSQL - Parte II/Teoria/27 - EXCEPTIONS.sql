SET SERVEROUTPUT ON
DECLARE
  lname VARCHAR2(15);
BEGIN
  SELECT last_name INTO lname FROM employees WHERE     
  first_name='John'; 
  DBMS_OUTPUT.PUT_LINE ('John''s last name is : ' ||lname);
EXCEPTION
  WHEN TOO_MANY_ROWS THEN
  DBMS_OUTPUT.PUT_LINE (' Your select statement retrieved multiple
  rows. Consider using a cursor.');
END;

--------------------------------------------------------------------



SET SERVEROUTPUT ON
DECLARE
 insert_excep EXCEPTION;
 PRAGMA EXCEPTION_INIT   (insert_excep, -01400);
BEGIN
 INSERT INTO departments (department_id, department_name) VALUES (280, 
 NULL);
EXCEPTION
 WHEN insert_excep THEN
 DBMS_OUTPUT.PUT_LINE('INSERT OPERATION FAILED');
 DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;



--------------------------------------------------------------------



SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT deptno PROMPT 'Please enter the department number: '
ACCEPT name   PROMPT 'Please enter the department name: '
DECLARE
  invalid_department EXCEPTION;
  name VARCHAR2(20):='&name';
  deptno NUMBER :=&deptno;
BEGIN
  UPDATE	departments
  SET  department_name = name
  WHERE	department_id = deptno;
  IF SQL%NOTFOUND THEN
    RAISE invalid_department;
  END IF;
  COMMIT;
EXCEPTION
  WHEN invalid_department  THEN
    DBMS_OUTPUT.PUT_LINE('No such department id.');
END;

----------------------------------------------------------------

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  fname VARCHAR2(15):='&fname';
  lname VARCHAR2(15);
BEGIN
  SELECT last_name INTO lname FROM employees WHERE     
  LOWER(first_name)=LOWER(fname); 
  DBMS_OUTPUT.PUT_LINE (fname||'''s last name is : ' ||lname);
EXCEPTION
  WHEN TOO_MANY_ROWS THEN
  DBMS_OUTPUT.PUT_LINE (' Your select statement retrieved multiple
  rows, consider using a cursor');

  WHEN NO_DATA_FOUND THEN
  DBMS_OUTPUT.PUT_LINE (' Sorry! The search did not retrieve any  
  row. Please try with a different data');   
END;



