--------------------------------------------------------
-- Archivo creado  - jueves-abril-20-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure PEDIR_ALVAREDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."PEDIR_ALVAREDO" 
(
  EMPLEADO_ID IN NUMBER 
, MONTO_SOLICITADO IN NUMBER 
, FECHA IN VARCHAR2 
, RESULTADO OUT VARCHAR2 
) AS

v_monto sueldos_proyectados.salary%type ;
/*cursor c_prestamos_cursor(pres number) is
select employee_id , monto , fecha
from prestamos;
*/

BEGIN
 
SELECT salary
INTO v_monto
from sueldos_proyectados 
where EMPLOYEE_ID = EMPLEADO_ID and to_char(MES,'mm/yyyy') = to_char(to_date(fecha,'dd/mm/yyyy'),'mm/yyyy') ;
 
    
IF(MONTO_SOLICITADO < v_monto * 0.3 )then
  
 INSERT INTO PRESTAMOS(EMPLOYEE_ID,MONTO,FECHA)
        VALUES(EMPLEADO_ID,MONTO_SOLICITADO,FECHA) ;
 
RESULTADO := 'SU PRESTAMO FUE APROBADO' ;
 
 end if;
 
 EXCEPTION 
 
 WHEN OTHERS THEN
 
 RESULTADO :=  'SU PRESTAMO NO FUE APROBADO' ;
  
 

  
END PEDIR_ALVAREDO;

/
