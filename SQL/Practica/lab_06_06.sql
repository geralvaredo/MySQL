
select a.department_id as DEPARTMENT , a.last_name as EMPLOYEE , b.last_name as COLLEAGUE
from EMPLOYEES a left outer join Employees b
on a.department_id = b.department_id
where a.employee_id <> b.employee_id;