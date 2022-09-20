{{
    config(
        materialized="view",
        tags=["datavault", "dv", "juvare", "demo"],
        schema="dbo",
        alias="dbt_tables",
    )
}}

with source_cte as (
    select * from {{ source('juvare','tables')  }}
),
final_cte as (
    select * from source_cte
    )

select *
from final_cte

