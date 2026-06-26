SELECT 
    restaurant_id,
    item_id,
    name,
    category,
    price,
    ingredients,
    is_vegetarian,
    spice_level,
    current_timestamp() as updated_at
FROM
    {{ ref('ss_dim_menu_items') }}
WHERE dbt_valid_to > current_timestamp()