SELECT M.ITEM_NAME, M.PRICE
FROM F18_2_MENU_ITEM AS M
    INNER JOIN F18_2_ORDERS AS O
    ON M.ITEMID = O.ITEM_ID
    INNER JOIN F18_2_RESTAURANT R 
    ON R.REST_ID = O.REST_ID
    GROUP BY R.LOCALITY;


///////////////

SQL> select cuisine, item name, price
  2  from f18_2_memu_item
  3  group by cuisine
having price > 




/////////////
 select sum(price)/count(*)*100
  2  from f18_2_menu_item;

/////
 select avg(price)
  2  from f18_2_menu_item
  3  group by cuisine;


  /////
  select cuisine, avg(price) as average
  from f18_2_menu_item
  group by avg(price);



  /////
  select m.item_name, m.price, r.name
  2  from f18_2_menu_item m, f18_2_restaurant r, f18_2_orders o
  3  where m.item_id = o.item_id and r.rest_id = o.rest_id
  4  group by m.cuisine;
select m.item_name, m.price, r.name


//////  select r.name,sum(m.price)*r.commision_offered/100
  2  from f18_2_restaurant r, f18_2_orders o, f18_2_menu_item m
  3  where m.item_id = o.item_id and r.rest_id = o.rest_id
  4  group by r.name;
select r.name,sum(m.price)*r.commision_offered/100




/////
SELECT	name as Customer_Name, customer_id 
FROM	f18_2_customer
WHERE	customer_id IN(
	SELECT		customer_id
	FROM        f18_2_orders o, f18_2_menu_item
	WHERE       o.item_id = m.item_id
	GROUP BY	o.customer_id, o.order_time
	)
ORDER BY name;

