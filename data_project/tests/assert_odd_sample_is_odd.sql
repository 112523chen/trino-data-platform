select id from {{ ref("old_sample") }} where 1 = 1 and id % 2 = 1
