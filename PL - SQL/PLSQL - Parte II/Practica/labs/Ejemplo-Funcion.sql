DECLARE
  P_SALARIO NUMBER;
  P_CANT_ESCALAS NUMBER;
  v_Return NUMBER;
  V_MAX_SALARY EMPLOYEES.SALARY%TYPE;
BEGIN
  P_SALARIO := 24000;
  P_CANT_ESCALAS := 5;

  v_Return := DAME_ESCALA(
    P_SALARIO => P_SALARIO,
    P_CANT_ESCALAS => P_CANT_ESCALAS
  );
 
  
  
DBMS_OUTPUT.PUT_LINE('v_Return = ' || v_Return);
 
   

  --RETURN 0;
  --:v_Return := v_Return;
--rollback; 
END;
