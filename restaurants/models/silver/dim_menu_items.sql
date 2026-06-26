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
    {{ ref('menu_items_snapshot') }}
WHERE dbt_valid_to > current_timestamp()