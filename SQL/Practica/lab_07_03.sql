
select employee_id , last_name
from employees 
where DEPARTMENT_ID IN 

(select DEPARTMENT_ID
from employees 
where last_name like '%u%');