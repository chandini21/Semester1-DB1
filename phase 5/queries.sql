--Total Order by a customer which is greater than 2 --

SELECT name, COUNT(DISTINCT item_id) as total_order FROM F18_2_Customer
INNER JOIN F18_2_Orders ON F18_2_Customer.customer_id = F18_2_Orders.customer_id
GROUP BY F18_2_Customer.customer_id, name
HAVING COUNT(DISTINCT item_id) > 2;

--Price of each item in the menu table
select item_id, (base_delivery_charge + price) as totalprice 
from F18_2_Restaurant 
left join F18_2_Menu_Item on F18_2_Restaurant.rest_id = F18_2_Menu_Item.rest_id;

--Average price of dishes in each cuisine in the ascending order of its average
 select cuisine, avg(price) as average from f18_2_menu_item
 group by cuisine order by average;

-- max order date over payment mode --

SELECT  MAX(order_date) OVER (ORDER BY payment_mode) as orderdate, payment_mode FROM F18_2_Orders;

-- max menu item as per customer_id --

SELECT  customer_id, MAX(item_id) OVER (order by customer_id) FROM F18_2_Orders;

-- Payment Process used (ROLLUP) --

select count(*), payment_mode from F18_2_Orders GROUP BY ROLLUP(payment_mode)

-- Commision Offered Restaurant Count --

select commision_offered, count(commision_offered) from F18_2_Restaurant group by CUBE(commision_offered)

--customer with more than 5 orders using credit card

select name as customer_name, customer_id
  from f18_2_customer
  where customer_id in(
  select customer_id
  from f18_2_orders o, f18_2_menu_item m
  where o.item_id = m.item_id and o.payment_mode = 'Credit card'
  group by o.customer_id
  having count(o.order_time)>5)
  order by name;