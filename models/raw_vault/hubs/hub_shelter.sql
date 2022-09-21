{%- set source_model = "vw_stg_wedb9_table_1" -%}
{%- set src_pk = "shelter_bkey" -%}
{%- set src_nk = "dataid" -%}
{%- set src_ldts = "_airbyte_emitted_at" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}