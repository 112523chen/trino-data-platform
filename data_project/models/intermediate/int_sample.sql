{{
    config(
        materialized="incremental",
        unique_key="id",
        incremental_strategy="merge",
        on_schema_change="append_new_columns",
    )
}}

select id, name, date
from {{ ref("stg_odd_sample") }}

{% if is_incremental() %}
    -- Only process rows newer than the last run + a safety lookback window
    where date > (select date_add('hour', -3, max(date)) from {{ this }})
{% endif %}
