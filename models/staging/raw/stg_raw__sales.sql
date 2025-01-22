with

    source as (select * from {{ source("raw", "sales") }}),

    renamed as (select date_date, orders_id, pdt_id, revenue, quantity from source)

select date_date,
       orders_id,
       cast(pdt_id as int64) as products_id,
       cast(revenue as float64) as revenue,
       cast(quantity as int64) as quantity

from renamed
