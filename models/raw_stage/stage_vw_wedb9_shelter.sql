{{
    config(
        materialized="view",
        tags=["datavault", "dv", "juvare", "demo", "shelter"],
        schema="dbo",
        alias="stage_vw_wedb9_shelter",
    )
}}

-- add dynamic business key
with source_cte as (
    select * from (
        select case when prevdataid = 0 then dataid else prevdataid end shelter_bkey, a.*  from {{ source('juvare', 'table_1') }} a)
),
final_cte as (
    select *, 'AIRBYTE_@_JUVARE' as RECORD_SOURCE, TO_DATE('{{ var('load_date') }}', 'yyyy-MM-dd') AS LOAD_EFF_DT, md5(cast(dataid as VARCHAR)) AS SHELTER_HKEY from source_cte
    )

select *
from final_cte limit 10

