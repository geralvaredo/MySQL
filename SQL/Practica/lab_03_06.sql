

select last_name ,round(months_between(sysdate,hire_date))  as "MONTH WORKED"
FROM employees 
order by  "MONTH WORKED";