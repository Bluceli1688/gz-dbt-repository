select orders_id,
       date_date,
       revenue,
       quantity,
       purchase_cost,
       margin
from {{ref("stg_raw__sales")}} s
join {{ref("int_sales_margin")}} m
on s.products_id = m.products_id