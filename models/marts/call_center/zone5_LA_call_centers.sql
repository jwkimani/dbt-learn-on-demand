{{ config (materialized="table")}}


with la_call_centers as (
    
    SELECT * 
    FROM {{ ref('zone4_consolidated_call_centers')}}
    WHERE cc_state = 'LA'
)

select * from la_call_centers