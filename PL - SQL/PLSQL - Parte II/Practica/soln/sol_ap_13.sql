DECLARE
	CURSOR Senior_Clerk IS
	SELECT employee_id,job_id FROM emp
	WHERE job_id = 'ST_CLERK' AND salary > 3000
	FOR UPDATE OF job_id;
BEGIN
	FOR Emrec IN Senior_Clerk 
	LOOP
		UPDATE emp
		SET job_id = 'SR_CLERK',
		salary = 1.1 * salary
		WHERE CURRENT OF Senior_Clerk;
	END LOOP;
	COMMIT;
END;
/
SELECT * FROM emp;