select 
count(*) as contagem,
company_name, 
contact_name
from {{ref("customers")}}
group by 2,3
having contagem = 1