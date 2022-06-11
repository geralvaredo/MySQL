BEGIN
   UPDATE departments SET location_id=3000 WHERE 
   department_id=:dept_id;
END;
/
SELECT * FROM departments WHERE department_id=:dept_id;
DELETE FROM departments WHERE department_id=:dept_id;
