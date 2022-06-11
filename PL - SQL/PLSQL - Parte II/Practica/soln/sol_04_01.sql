

SET SERVEROUTPUT ON
DECLARE
   max_deptno	NUMBER;
BEGIN
   SELECT MAX(department_id)  INTO max_deptno  FROM	departments;
   DBMS_OUTPUT.PUT_LINE('The maximum department_id is : ' || max_deptno);
 END;



