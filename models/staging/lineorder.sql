{{
    config (
        engine='MergeTree()',
        order_by='LO_ORDERKEY'
    )
}}

select
    {{ dbt_utils.star(from=source('dbgen', 'lineorder')) }}
from {{ source('dbgen', 'lineorder') }}