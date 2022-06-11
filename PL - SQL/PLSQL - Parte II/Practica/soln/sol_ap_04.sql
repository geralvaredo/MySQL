SET SERVEROUTPUT ON
UNDEFINE 
DECLARE
	YEAR NUMBER(4) := &P_YEAR;
	REMAINDER1 NUMBER(5,2);
	REMAINDER2 NUMBER(5,2);
	REMAINDER3 NUMBER(5,2);
BEGIN
 	REMAINDER1 := MOD(YEAR,4);
	REMAINDER2 := MOD(YEAR,100);
	REMAINDER3 := MOD(YEAR,400);
	IF ((REMAINDER1 = 0 AND REMAINDER2 <> 0 ) OR REMAINDER3 = 0) THEN	
		DBMS_OUTPUT.PUT_LINE(YEAR || ' is a leap year');
	ELSE
		DBMS_OUTPUT.PUT_LINE (YEAR || ' is not a leap year');		
	END IF;
END;
/
SET SERVEROUTPUT OFF