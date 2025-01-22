select m.orders_id,
       date_date,
       (margin + shipping_fee - logcost - ship_cost) as operational_margin

from {{ref("int_orders_margin")}} m 
join {{ref("stg_raw__ship")}} s 
on m.orders_id = s.orders_id