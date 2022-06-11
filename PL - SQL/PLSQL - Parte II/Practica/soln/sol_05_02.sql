SET VERIFY OFF
DEFINE empno = 176
DECLARE
  empno       emp.employee_id%TYPE := TO_NUMBER(&empno);
  asterisk    emp.stars%TYPE := NULL;
  sal	      emp.salary%TYPE;
BEGIN
  	SELECT NVL(ROUND(salary/1000), 0)  INTO sal
 	FROM emp  WHERE employee_id = empno;

	FOR i IN 1..sal 
        LOOP
  		asterisk := asterisk ||'*';
	END LOOP;

  	UPDATE emp SET stars = asterisk
  	WHERE employee_id = empno;
	COMMIT;
END;
/
SELECT employee_id,salary, stars
FROM emp WHERE employee_id=&empno;

