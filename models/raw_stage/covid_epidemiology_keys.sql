{{
    config(
        enabled=false,
        materialized="table",
        tags=["airbyte", "flatten", "covid"],
        schema="williams_dev",
        alias="epidemiology_keys",
    )
}}

with flatten_airbyte_data as (
    select json_extract_path_text(json_serialize(_airbyte_data), 'key') from {{ source('covid','_airbyte_raw_covid_epidemiology')  }}
),
final_cte as (
    select * from flatten_airbyte_data
    )

select *
from final_cte

