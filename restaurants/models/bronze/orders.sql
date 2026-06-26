WITH historical AS( 
    SELECT order_id,timestamp,restaurant_id,customer_id,order_type,items,total_amount,payment_method,order_status,created_at FROM

{{ source('landing', 'historical_orders') }}

), 
stream AS (
    SELECT order_id,timestamp,restaurant_id,customer_id,order_type,items,total_amount,payment_method,order_status,created_at FROM
    {{ source('landing', 'orders') }}
)
SELECT * FROM historical
UNION ALL
SELECT * FROM stream