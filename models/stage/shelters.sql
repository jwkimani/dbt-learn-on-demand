{{
    config(
        materialized="view",
        tags=["datavault", "dv", "juvare", "demo"],
        schema="dbo",
        alias="dbt_table_1",
    )
}}

with source_cte as (
    select * from {{ source('juvare','table_1')  }}
),
final_cte as (
    select * from source_cte
    )

select *
from final_cte

