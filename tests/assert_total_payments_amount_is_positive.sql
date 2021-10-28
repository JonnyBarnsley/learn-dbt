select 
    order_id,
    sum(amount) as total_amount
from {{ref('STG_PAYMENTS')}}
group by order_id
having not(total_amount >= 0)