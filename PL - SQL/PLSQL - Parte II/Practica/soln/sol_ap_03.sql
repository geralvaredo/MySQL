SET SERVEROUTPUT ON
  DECLARE
	custid	NUMBER(4) := 1600;
	custname	VARCHAR2(300) := 'Women Sports Club';
	new_custid	NUMBER(3) :=500;
BEGIN
				
	  DECLARE
		  custid	  NUMBER(4) := 0;
		  custname       VARCHAR2(300) := 'Shape up Sports Club';
		  new_custid	  NUMBER(3) := 300;
		  new_custname	  VARCHAR2(300) := 'Jansports Club';
	 
  	  BEGIN
		  custid := new_custid;
		  custname := custname || ' ' ||  new_custname;
		  DBMS_OUTPUT.PUT_LINE('custid in the sub block is  ' || custid);
		  DBMS_OUTPUT.PUT_LINE('custname  in the sub block ' || custname);
		 DBMS_OUTPUT.PUT_LINE('new_custname in the sub block ' || new_custname);
  	  END;
custid := (custid *12) / 10;

DBMS_OUTPUT.PUT_LINE('new_custid  in the main block ' || new_custid);
DBMS_OUTPUT.PUT_LINE('custid in the main block ' || custid);
DBMS_OUTPUT.PUT_LINE('custname in the main block ' || custname);
END;
/
SET SERVEROUTPUT Off