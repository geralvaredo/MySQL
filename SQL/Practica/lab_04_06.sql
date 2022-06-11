

select job_id,
case job_id when 'AD_PRES' then 'A' 
            when 'ST_MAN' then 'B'
            when 'IT_PROG' then 'C'
            when 'SA_REP' then'D'
            when 'ST_CLERK' then 'E'
            else '0' END "GRADE"
from  EMPLOYEES;