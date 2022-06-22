{{
    config (
        engine='MergeTree()',
        order_by='S_SUPPKEY'
    )
}}

select
    {{ dbt_utils.star(from=source('dbgen', 'supplier')) }}
from {{ source('dbgen', 'supplier') }}