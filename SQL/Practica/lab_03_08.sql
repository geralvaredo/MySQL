
select rpad(last_name,8) || ' ' || rpad(' ', salary/1000 +1 ,'*') as "Employees" 
from employees 
 ;
