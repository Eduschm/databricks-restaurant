SELECT * FROM
{{ ref('ss_dim_customer') }}
WHERE dbt_valid_to > current_timestamp()