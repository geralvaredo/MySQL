declare


v_promedio employees.salary%type ;

begin


 v_promedio := calcular_promedio ;


dbms_output.put_line( v_promedio) ;

exception 

when others then

SYS.DBMS_OUTPUT.PUT_LINE('Errores') ;


end;




