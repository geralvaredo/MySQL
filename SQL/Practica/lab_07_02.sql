

select employee_id , last_name , salary
from EMPLOYEES
where salary > 
(select round(avg(salary)) as "SALARY"
from employees
)
order by salary asc
;


