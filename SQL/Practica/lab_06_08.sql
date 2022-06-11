
/*select last_name ,hire_date 
from EMPLOYEES
where hire_date > 
(select  hire_date 
from EMPLOYEES  
where last_name = 'Davies');*/

select e.last_name , e.hire_date
from Employees e join EMPLOYEES d  
on (d.last_name = 'Davies')
where d.hire_date < e.HIRE_DATE ;
