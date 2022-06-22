{{
    config (
        engine='MergeTree()',
        order_by='P_PARTKEY'
    )
}}

select
    {{ dbt_utils.star(from=source('dbgen', 'part')) }}
from {{ source('dbgen', 'part') }}