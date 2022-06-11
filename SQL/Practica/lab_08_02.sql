
select 'German' as NOMBRE , 'Alvaredo' as APELLIDO, 37206216 as DNI,'24' as EDAD
from dual ;

select  last_name ||  lpad(first_name,50,'-') as RESULTADO   
FROM EMPLOYEES;

select  department_name as Departments ,count() as Employees 
from DEPARTMENTS d
join EMPLOYEES e
on d.DEPARTMENT_ID = e.department_id  
where Employees between 30 and 50 ;

select sum (salary + 1000) as "en Bonos"
from employees
where salary < avg(salary) 
;






