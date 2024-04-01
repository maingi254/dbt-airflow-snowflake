select 
lineitem.order_item_key,
lineitem.part_key,
lineitem.line_number,
orders.order_key,
lineitem.extended_price,
orders.customer_key,
orders.order_date,
lineitem.extended_price * lineitem.discount_percentage as item_discount_amount
from 
{{ref('tpch_orders')}} as orders

join 
    {{ref("tpch_lineitems")}} as lineitem
    on orders.order_key= lineitem.order_key
order by orders.order_date