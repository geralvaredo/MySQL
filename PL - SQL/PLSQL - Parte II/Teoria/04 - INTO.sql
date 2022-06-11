VARIABLE emp_salary NUMBER
BEGIN
   SELECT salary  INTO :emp_salary 
   FROM  employees WHERE employee_id = 178;  
END;
/
PRINT emp_salary
SELECT first_name, last_name FROM employees 
WHERE salary=:emp_salary;

--------------
SET SERVEROUTPUT ON
DECLARE
  lname VARCHAR2(15);
BEGIN
  SELECT last_name INTO lname FROM employees WHERE     
  first_name='John'; 
  DBMS_OUTPUT.PUT_LINE ('John''s last name is : ' ||lname);
END;





