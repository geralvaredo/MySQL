DECLARE
	HOWMANY NUMBER(3);
	DEPTNO DEPARTMENTS.department_id%TYPE  := &P_DEPTNO;
BEGIN
	SELECT COUNT(*) INTO HOWMANY FROM employees
	WHERE department_id = DEPTNO;
	DBMS_OUTPUT.PUT_LINE (HOWMANY  || ' employee(s) work for department number ' ||DEPTNO);
END;
/

