declare


v_promedio employees.salary%type ;
v_mayor employees.salary%type ;
v_por employees.salary%type ;
v_exp exception ;
begin


 v_promedio := calcular_promedio ;


select max(salary)
into v_mayor 
from EMPLOYEEs
;


if(v_mayor = 0) then
raise v_exp;
end if;

v_por := v_promedio * 100 / v_mayor ;


--SYS.DBMS_OUTPUT.PUT_LINE('Porcentaje: ' ||v_por) ;




exception 

when v_exp then 
SYS.DBMS_OUTPUT.PUT_LINE('No se puede dividir por cero');


end;
