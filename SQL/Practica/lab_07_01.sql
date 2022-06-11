define nombre

select last_name , hire_date
 from employees  
 where department_id =  
(select  department_id  
from EMPLOYEES
where last_name = '&&nombre') 
and last_name <> 'nombre';