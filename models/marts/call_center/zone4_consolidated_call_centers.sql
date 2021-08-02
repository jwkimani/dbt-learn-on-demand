with SF100TCL as (
    select * from {{ ref('stg_TPCDS_SF100TCL')}}
),
SF10TCL as (
    select * from {{ ref('stg_TPCDS_SF10TCL')}}
),
consolidated_call_center as (
    select * from SF100TCL
    UNION ALL
    select * from SF10TCL
)
select * from consolidated_call_center
