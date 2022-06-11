
select last_name , round((sysdate - hire_date)/ 7) as TENURE
FROM EMPLOYEES
where department_id = 90
order by TENURE;