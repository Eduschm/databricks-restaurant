SELECT * FROM
{{ ref('customer_snapshot') }}
WHERE dbt_valid_to > current_timestamp()