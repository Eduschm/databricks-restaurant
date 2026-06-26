SELECT 
    review_id,
    order_id,
    customer_id,
    restaurant_id,
    review_text,
    rating,
    review_timestamp
FROM {{ source('landing', 'reviews') }}