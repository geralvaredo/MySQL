SET VERIFY OFF;
DELETE FROM top_salaries;
DEFINE p_num = 5
DECLARE
  num         NUMBER(3) := &p_num;
  sal         employees.salary%TYPE;
  CURSOR        emp_cursor IS
    SELECT      distinct salary
    FROM        employees
    ORDER BY    salary DESC;
BEGIN
  OPEN emp_cursor;
  FETCH emp_cursor INTO  sal;
  WHILE emp_cursor%ROWCOUNT <= num AND emp_cursor%FOUND LOOP
   		INSERT INTO top_salaries (salary)
    		VALUES (sal);	
    FETCH emp_cursor INTO sal;
  END LOOP;
  CLOSE emp_cursor;  
END;
/
SELECT * FROM top_salaries;
