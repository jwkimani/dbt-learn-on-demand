{{
    config(
        materialized="view",
        tags=["datavault", "dv", "juvare", "demo"],
        schema="dbo",
        alias="dbt_boards",
    )
}}

with source_cte as (
    select * from {{ source('juvare','boards')  }}
),
final_cte as (
    select * from source_cte
    )

select *
from final_cte

