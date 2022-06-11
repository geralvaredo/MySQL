

select last_name, nvl( to_char(commission_pct) , 'no commission')  "COMM"
from EMPLOYEES ;
