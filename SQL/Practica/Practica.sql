

--1)
--TRUE
select last_name ,job_id , salary AS Sal
From EMPLOYEES;

--2)
--FALSE
/*select *
from job_grades ; */


--3)
-- sal * 12 , ANNUAL SAlARY, 
/*SELECT  employee_id , last_name
sal * 12 ANNUAL SALARY
from employees ;*/

select department_id , department_name, manager_id, location_id
from DEPARTMENTS ;

select employee_id , first_name , last_name , email , phone_number ,
hire_date , job_id , salary , commission_pct , manager_id , department_id
from EMPLOYEES ;

select job_id
from EMPLOYEES;

select employee_id AS emp# , last_name employee , job_id "job" ,
hire_date  "Hire Date" 
from Employees 
WHERE employee_id > 200  ;

SELECT last_name || ',' || job_id as "Employee and Title" 
from EMPLOYEES;
/*order by last_name ASc*/





 







 
