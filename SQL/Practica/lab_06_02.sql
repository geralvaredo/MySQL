

select last_name , department_id , department_name
from EMPLOYEES emp  JOIN departments dep
using (department_id); 