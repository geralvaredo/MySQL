
select last_name,SALARY
from EMPLOYEES
where manager_id = 
(select employee_id
from employees
where last_name = 'King');

