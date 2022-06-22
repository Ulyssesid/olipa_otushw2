{{
    config (
        engine='MergeTree()',
        order_by=['year', 'P_BRAND']
    )
}}

SELECT
    sum(LO_REVENUE) as LO_REVENUE_Sum,
    toYear(LO_ORDERDATE) AS year,
    P_BRAND
FROM {{ref ('lineorder_flat') }}
WHERE P_CATEGORY = 'MFGR#12' AND S_REGION = 'AMERICA'
GROUP BY
    year,
    P_BRAND