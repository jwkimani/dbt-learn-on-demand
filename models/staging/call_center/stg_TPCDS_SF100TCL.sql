with TPCDS_SF100TCL_CALL_CENTER as (
    
    SELECT *, 'TPCDS_SF100TCL' AS source_system 
    FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CALL_CENTER
)

select * from TPCDS_SF100TCL_CALL_CENTER