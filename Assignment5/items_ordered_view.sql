create view items_ordered as 
SELECT item_id, product_ID, item_price, quantity From order_items;