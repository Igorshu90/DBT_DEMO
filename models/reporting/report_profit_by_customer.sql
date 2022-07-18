select 
    CUSTOMERID,
    SEGMENT,
    COUNTRY,
    sum(ORDER_PROFIT) profit_by_customer

from 
    {{ ref('stg_orders') }}
group by
    CUSTOMERID,
    SEGMENT,
    COUNTRY