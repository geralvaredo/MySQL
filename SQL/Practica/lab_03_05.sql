select initcap(last_name) , length(last_name) as "Length" 
from employees 
where last_name like 'A%' 
or last_name like 'J%'
or last_name like 'M%';