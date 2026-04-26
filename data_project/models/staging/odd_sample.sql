{{ config(schema="silver") }}

select *
from {{ source("bronze", "sample") }}
where 1 = 1 and id % 2 = 0
