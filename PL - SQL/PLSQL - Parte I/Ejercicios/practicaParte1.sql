

/* EJERCICIO 01 */
select 'German' as NOMBRE , 'Alvaredo' as APELLIDO, 37206216 as DNI,'24' as EDAD
from dual ;


/*EJERCICIO 02**/
select  last_name ||  lpad(first_name,50,'-') as RESULTADO   
FROM EMPLOYEES;

/*EJERCICIO 03*/
select  department_name as Departments , count() as  
from DEPARTMENTS d
join EMPLOYEES e
on d.DEPARTMENT_ID = e.department_id  
where  ;

/*EJERCICIO 04*/
select sum(salary + 1000) as "En Bonos"
from employees
where salary < 
(select avg(salary)
from employees);



/*EJERCICIO 06*/


update employees
set salary = salary + 1500
where salary < 
(select avg(salary) from employees);

/*EJERCICIO 07*/

alter table employees
modify (email varchar(400) ) ;

update employees  
set email = last_name || '.' ||first_name || '@' || department_id || '.mycomp.com' ;

/*EJERCICIO 08*/

insert into EMPLOYEES (employee_id,last_name, first_name,email,phone_number,job_id,hire_date,salary,manager_id,department_id)
values(250,'PEREZ','JUAN','jp@hotmail.com',3514721900,'ST_CLERK',sysdate,3400,124,50);

select last_name
from employees 
where last_name like 'PEREZ';
