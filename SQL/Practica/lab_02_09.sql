

select last_name ,salary , commission_pct 
from employees
where commission_pct IS NOT NULL 
order by salary desc , commission_pct desc ;