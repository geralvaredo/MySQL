
select  manager_id , min(salary)
from EMPLOYEES
where manager_id is not null 
group by manager_id
having min(salary) > 6000
order by min(salary) desc;