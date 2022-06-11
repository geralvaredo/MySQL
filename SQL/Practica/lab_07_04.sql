
select last_name , department_id , job_id
from employees  
where DEPARTMENT_ID in

(select location_id 
from locations
where location_id = 1700);