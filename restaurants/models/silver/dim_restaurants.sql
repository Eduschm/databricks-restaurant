SELECT * FROM
{{ ref('ss_dim_restaurants') }}
WHERE dbt_valid_to > current_timestamp()
