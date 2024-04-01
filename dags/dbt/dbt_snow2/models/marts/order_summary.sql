select
    order_key,
    sum(extended_price) as gross_sale_ammount,
    sum(item_discount_amount) as item_discount_amount

    from 
        {{ref('order_items')}}
    
    group by order_key