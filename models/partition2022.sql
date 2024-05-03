select * from {{ref("joins")}}
where date_part(year,order_date)::bigint = 2022