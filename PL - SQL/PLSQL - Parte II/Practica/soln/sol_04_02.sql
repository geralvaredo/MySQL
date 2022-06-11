VARIABLE dept_id NUMBER
SET SERVEROUTPUT ON
DECLARE
   dept_name departments.department_name%TYPE:= 'Education';
   max_deptno	NUMBER;
BEGIN
   SELECT MAX(department_id)  INTO max_deptno  FROM departments;
   DBMS_OUTPUT.PUT_LINE('The maximum department_id is : ' ||       
   max_deptno);
   :dept_id := 10 + max_deptno;
   INSERT INTO departments (department_id, department_name, location_id) 
   VALUES (:dept_id,dept_name, NULL);
   DBMS_OUTPUT.PUT_LINE (' SQL%ROWCOUNT gives ' || SQL%ROWCOUNT);
 END;
/
SELECT * FROM  departments  WHERE  department_id=:dept_id;


