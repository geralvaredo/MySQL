DECLARE
  PARAM1 VARCHAR2(200);
  PARAM2 VARCHAR2(200);
  PARAM3 VARCHAR2(200);
BEGIN
  PARAM1 := 'HOLA';
  PARAM2 := 'MUNDO';

  PROCEDIMIENTO1(
    PARAM1 => PARAM1,
    PARAM2 => PARAM2,
    PARAM3 => PARAM3
  );
  /* Legacy output: */ 
  DBMS_OUTPUT.PUT_LINE('PARAM1 = ' || PARAM1);
  DBMS_OUTPUT.PUT_LINE('PARAM2 = ' || PARAM2);
  DBMS_OUTPUT.PUT_LINE('PARAM3 = ' || PARAM3);

--  :PARAM2 := PARAM2;
  /* Legacy output:*/  


  --:PARAM3 := PARAM3;
--rollback; 
END;
