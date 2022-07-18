select 
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY,
    SUM(ORDER_PROFIT) as PROFIT_BY_PRODUCT
from 
    {{ ref('stg_orders') }}
group by 
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY