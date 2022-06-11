
select e.last_name , e.hire_date ,
       m.last_name , m.hire_date 
       from employees e join employees m
       on (e.manager_id = m.employee_id)
       where e.hire_date < m.hire_date ;
       
       
