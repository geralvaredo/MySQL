

select job_id, max(salary) as Maximum , 
        min(salary) as Minimum , 
        sum(salary) as "SUM", 
        round( avg(salary)) as average 
 
from employees
group by job_id;