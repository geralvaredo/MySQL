
select last_name, job_id, department_id , department_name,location_id
from EMPLOYEES emp JOIN DEPARTMENTS dep
using (department_id)
natural join locations 
where city = 'Toronto';
