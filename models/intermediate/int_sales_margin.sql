select quantity * purchse_price as purchase_cost,
       revenue - (quantity * purchse_price) as margin,
       p.products_id
       
from {{ref("stg_raw__product")}} p
right join {{ref("stg_raw__sales")}} s
on p.products_id = s.products_id