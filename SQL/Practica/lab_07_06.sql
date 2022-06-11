
select department_id, last_name, job_id
from EMPLOYEES
where department_id = (select department_id 
from DEPARTMENTS
where department_name = 'Executive');