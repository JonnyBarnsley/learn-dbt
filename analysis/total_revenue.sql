with successful_payments as(
    select * from {{ref('STG_PAYMENTS')}}
    where status = 'success'
)

select sum(amount) as total_revenue
from successful_payments