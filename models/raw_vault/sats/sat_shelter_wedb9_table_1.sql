{{
    config(
        materialized="view",
        tags=["datavault", "dv", "juvare", "demo", "shelter"],
        schema="dbo",
    )
}}

{%- set source_model = "stage_vw_wedb9_shelter" -%}
{%- set src_pk = "shelter_bkey" -%}
{%- set src_hashdiff = "SHELTER_HKEY" -%}
{% set results_list = ["COUNTY", " DATAID", " REGION", " REMOVE", " STATUS", " USERID", " ADDRESS", " CAPACITY", " GLOBALID", " COMMUNITY", " ENTRYDATE", " OCCUPANCY", " INCIDENTID", " POSITIONID", " PREVDATAID", " AVAILABILITY", " MAP_LOCATION", " PET_FRIENDLY", " SHELTER_NAME", " SHELTER_TYPE", " ADA_COMPLIANT", " COOLING_CENTER", " SUBSCRIBERNAME", " WARMING_CENTER", " PRIMARY_CONTACT", " BACKUP_GENERATOR", " CHARGING_STATION", " FUNCTIONAL_NEEDS", " RECEPTION_CENTER", " SHELTER_COMMENTS", " SECONDARY_CONTACT", " PRIMARY_CONTACT_PHONE", " SECONDARY_CONTACT_PHONE"] %}


{%- set src_payload = results_list -%}
{%- set src_eff = "LOAD_EFF_DT" -%}
{%- set src_ldts = "_airbyte_emitted_at" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=src_eff,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}