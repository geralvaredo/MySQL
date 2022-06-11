
select last_name as "Employee",salary as "monthly Salary"
from employees 
where salary between 5000 and 12000 and department_id in (20,50); 