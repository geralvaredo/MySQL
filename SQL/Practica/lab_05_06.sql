

select job_id , count(*) 
from EMPLOYEES
where job_id = '&job_title' 
group by job_id;