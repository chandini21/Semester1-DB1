/*Average price of dishes in each cuisine in the ascending order of its average */
 select cuisine, avg(price) as average
 from f18_2_menu_item
 group by cuisine
 order by average;



  select name as customer_name, customer_id
  from f18_2_customer
  where customer_id in(
  select customer_id
  from f18_2_orders o, f18_2_menu_item m
  where o.item_id = m.item_id and o.payment_mode = 'Credit card'
  group by o.customer_id
  having count(o.order_time)>5)
  order by name;
 



