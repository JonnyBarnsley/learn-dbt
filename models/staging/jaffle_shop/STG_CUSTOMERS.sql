with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from {{ source('SANDBOX_DBT_RAW_JAFFLE_SHOP','customers') }}

)

SELECT * FROM customers