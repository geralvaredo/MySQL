--------------------------------------------------------
-- Archivo creado  - jueves-abril-20-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure PROYECCION_ALVAREDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."PROYECCION_ALVAREDO" 
(
   RESPUESTA OUT VARCHAR2
) AS

--v_salario employees.salary%type ;
v_fecha  employees.hire_date%type  ;

v_cant number ;

CURSOR c_emp_cursor is
select employee_id , sysdate, salary
from employees;


BEGIN
 
  delete from SUELDOS_PROYECTADOS;
    
  
  
  for reg in c_emp_cursor loop
   v_cant := 12;
   v_fecha := sysdate ;
      while(v_cant > 0)loop
        reg.salary := reg.salary  * 1.02 ; 
        v_fecha := add_months(v_fecha,1); 
      
        INSERT INTO SUELDOS_PROYECTADOS(EMPLOYEE_ID,MES,SALARY)
        VALUES(reg.employee_id,v_fecha,reg.salary) ;
        v_cant := v_cant - 1;
     end loop;
  end loop;
 
 RESPUESTA := 'ok' ;
 
 
 commit;  
 
  
 
 
  exception 
  
 when others then

RESPUESTA := 'error' ;

  rollback;
  
  
END PROYECCION_ALVAREDO;

/
