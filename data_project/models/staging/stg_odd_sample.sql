{{ config(schema="silver") }}

select *
from {{ source("bronze", "sample") }} s
where 1 = 1 and id % 2 = 0
