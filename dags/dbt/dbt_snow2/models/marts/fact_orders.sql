select
orders.*,
summary.gross_sale_ammount,
summary.item_discount_amount
from
{{ref("tpch_orders")}} as orders
join
    {{ref("order_summary")}} as summary
    on orders.order_key=summary.order_key
order by order_date