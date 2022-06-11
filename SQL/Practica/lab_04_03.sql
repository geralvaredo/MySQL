

select last_name , hire_date ,  to_char(hire_date , 'fmday') as "DAY"
from EMPLOYEES
order by  to_char(hire_date, 'D')  asc ;