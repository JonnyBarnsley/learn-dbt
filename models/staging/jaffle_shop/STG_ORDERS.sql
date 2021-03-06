with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('SANDBOX_DBT_RAW_JAFFLE_SHOP','orders') }}
    {{ limit_data_in_dev('order_date', 10000) }}

)

SELECT * FROM orders