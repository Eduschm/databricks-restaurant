SELECT * FROM
{{ ref('restaurants_snapshot') }}
WHERE dbt_valid_to > current_timestamp()
