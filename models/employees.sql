with calc_employees as (
select 
*,
first_name||' '||last_name as name,
(date_part(year,current_date) - date_part(year,birth_date))::bigint as age,
(date_part(year,current_date) - date_part(year,hire_date))::bigint as lengthofservice
from {{source("sources","employees")}}
) 
select * from calc_employees