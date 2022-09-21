{{
    config(
        materialized="view",
        tags=["datavault", "dv", "juvare", "demo"],
        schema="dbo",
        alias="dbt_table_1",
    )
}}

with source_cte as (
    select * from (
        select case when prevdataid = 0 then dataid else prevdataid end shelter_bkey, a.* from {{ source('juvare','table_1')  } a}
        )
),
final_cte as (
    select * from source_cte
    )

select *
from final_cte

