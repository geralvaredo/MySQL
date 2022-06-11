SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
   grade CHAR(1) := UPPER('&grade');
   appraisal VARCHAR2(20);
BEGIN
   appraisal := 
      CASE grade
         WHEN 'A' THEN 'Excellent'
         WHEN 'B' THEN 'Very Good'
         WHEN 'C' THEN 'Good'
         ELSE 'No such grade'
      END;
DBMS_OUTPUT.PUT_LINE ('Grade: '|| grade || '   Appraisal ' || appraisal);
END;

---------------------------------------------------------------------------

DECLARE
   grade CHAR(1) := UPPER('&grade');
   appraisal VARCHAR2(20);
BEGIN
    appraisal := 
      CASE 
         WHEN grade = 'A' THEN 'Excellent'
         WHEN grade IN ('B','C') THEN 'Good'                  
         ELSE 'No such grade'   
     END;
DBMS_OUTPUT.PUT_LINE ('Grade: '|| grade || '  Appraisal ' || appraisal);
END;

---------------------------------------------------------------------------

DECLARE
   deptid NUMBER;
   deptname VARCHAR2(20);
   emps NUMBER;
   mngid NUMBER:= 108;
   
BEGIN
     CASE  mngid
         WHEN  108 THEN 
            SELECT department_id, department_name INTO deptid, deptname 
                FROM departments WHERE manager_id=108;
            SELECT count(*) INTO emps FROM employees WHERE 
               department_id=deptid;
         WHEN  200 THEN 
            SELECT department_id, department_name INTO deptid, deptname 
                FROM departments WHERE manager_id=200;
            SELECT count(*) INTO emps FROM employees WHERE 
               department_id=deptid;
         WHEN  121 THEN 
            SELECT department_id, department_name INTO deptid, deptname 
                FROM departments WHERE manager_id=121;
            SELECT count(*) INTO emps FROM employees WHERE 
               department_id=deptid;        
     END CASE;
DBMS_OUTPUT.PUT_LINE ('You are working in the '|| deptname||' department. There are '||emps ||' employees in this department');

END;
