

SET SERVEROUTPUT ON
DECLARE  
   childrecord_exists EXCEPTION;
   PRAGMA EXCEPTION_INIT(childrecord_exists, -02292);
BEGIN
    DBMS_OUTPUT.PUT_LINE(' Deleting department 40........');
   delete from departments where department_id=40;
EXCEPTION
   WHEN childrecord_exists THEN
   DBMS_OUTPUT.PUT_LINE(' Cannot delete this department. There are employees in this department (child records exist.) ');
END;












