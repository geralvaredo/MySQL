
select emple.last_name  as Employe ,  emple.employee_id as EMP# ,
         ado.last_name as MAN,         ado.employee_id as Mgr
from EMPLOYEES emple left OUTER join EMPLOYEES ado 
on emple.manager_id = ado.EMPLOYEE_ID  
order by emple.employee_id ; 