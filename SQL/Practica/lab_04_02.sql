
select last_name , hire_date, 
to_char(
(next_day(add_months(hire_date,6),'lunes')),'fmDay, "the"  ddspth "of"  month, YYYY') as "REVIEW"
FROM EMPLOYEES;