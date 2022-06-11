
select department_id 
from employees 
minus 
select department_id
from EMPLOYEES
where job_id = 'ST CLERK';
