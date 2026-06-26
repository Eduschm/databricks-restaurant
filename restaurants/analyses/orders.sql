WITH historical AS( 
    SELECT * FROM

{{ source('landing', 'historical_orders') }}

), 
stream AS (
    SELECT * FROM
    {{ source('landing', 'orders') }}
)
SELECT * FROM historical
UNION ALL
SELECT * FROM stream