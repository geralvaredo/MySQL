
select last_name 
from EMPLOYEES
where salary > ANY
(select salary
from EMPLOYEES
where DEPARTMENT_ID = 60) ;