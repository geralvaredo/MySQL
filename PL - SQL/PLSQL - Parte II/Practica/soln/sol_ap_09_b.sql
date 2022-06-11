SET SERVEROUTPUT ON
DECLARE
	EMPNO emp.EMPLOYEE_ID%TYPE := &P_EMPNO;
	NEW_DEPTNO emp.DEPARTMENT_ID%TYPE := & P_NEW_DEPTNO;
	PER_INCREASE NUMBER(7,2) := & P_PER_INCREASE;
BEGIN
		UPDATE emp
		SET department_id = NEW_DEPTNO,
                salary	 = salary + (salary * PER_INCREASE/100)
		WHERE employee_id = EMPNO;	
		IF SQL%ROWCOUNT = 0 THEN
		  DBMS_OUTPUT.PUT_LINE ('No Data Found');
                ELSE	
		  DBMS_OUTPUT.PUT_LINE ('Update Complete');
		END IF;	
END;
/	
SET SERVEROUTPUT OFF
	
	