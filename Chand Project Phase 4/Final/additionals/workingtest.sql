 select item_name, price
  2  from f18_2_menu_item
  3  where item_id in
  4  (select item_id
  5  from f18_2_orders);

///////
 select m.cuisine, m.item_name as "Item Name", o.rest_id
  2  from f18_2_menu_item m, f18_2_orders o
  3  where m.item_id = o.item_id;

//////