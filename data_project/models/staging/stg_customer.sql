SELECT
    *
FROM
    {{ source('generator','customer') }} customer
WHERE
    1 = 1
    AND customer.born_at IS NOT NULL
    OR customer.age_years IS NOT NULL
