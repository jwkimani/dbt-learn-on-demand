{{
    config(
        materialized="view",
        tags=["datavault", "dv", "juvare", "demo"],
        schema="dbo",
        alias="dbt_table_rob",
    )
}}

with source_cte as (
    select * from {{ source('juvare','table_rob')  }}
),
final_cte as (
    select * from source_cte
    )

select *
from final_cte

