with payments as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        {{ cents_to_dollars('amount') }} as amount,
        created as created_at
    from {{ source('SANDBOX_DBT_STRIPE','payment') }}

    {{ limit_data_in_dev('created', 10000) }}

)

SELECT * FROM payments