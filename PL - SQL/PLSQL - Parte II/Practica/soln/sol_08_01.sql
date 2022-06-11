DELETE FROM MESSAGES; 

SET VERIFY OFF
DEFINE sal = 6000 
DECLARE
  ename	employees.last_name%TYPE;
  emp_sal		employees.salary%TYPE := &sal;
BEGIN
  SELECT	last_name
  INTO 		ename
  FROM		employees
  WHERE		salary = emp_sal;
  INSERT INTO messages (results)
  VALUES (ename || ' - ' || emp_sal);
EXCEPTION
  WHEN no_data_found THEN
    INSERT INTO messages (results)
    VALUES ('No employee with a salary of '|| TO_CHAR(emp_sal));
  WHEN too_many_rows THEN
    INSERT INTO messages (results)
    VALUES ('More than one employee with a salary of '||
             TO_CHAR(emp_sal));
  WHEN others THEN
    INSERT INTO messages (results)
    VALUES ('Some other error occurred.');
END;
/
SELECT * FROM messages;


