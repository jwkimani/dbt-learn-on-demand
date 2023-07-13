-- with my_cte as (
    SELECT

    DATE_,

    COUNTRY,

    SOURCE_1,

    SOURCE_2,

    DISCREPANCY,

    SOURCE_

    FROM MCA_VW_REVENUE_ORDERS_VISITS_DISCREPANCY

    where DATE_>'{{ var("MAX_DATE") }}' and SOURCE_='{{ var("SOURCE") }}'
-- )

-- select * from my_cte