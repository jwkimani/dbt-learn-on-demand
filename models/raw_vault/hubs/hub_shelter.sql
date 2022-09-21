{{
    config(
        materialized="table",
        tags=["datavault", "dv", "juvare", "demo", "shelter"],
        schema="dbo",
    )
}}
{%- set source_model = "stage_vw_wedb9_shelter" -%}
{%- set src_pk = "shelter_bkey" -%}
{%- set src_nk = "SHELTER_HKEY" -%}
{%- set src_ldts = "_airbyte_emitted_at" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}
