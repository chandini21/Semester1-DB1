--Total Order by a customer which is greater than 2 --

SELECT name, COUNT(DISTINCT menu_id) as total_order FROM customer
INNER JOIN orders ON customer.customer_id = orders.customer_id
GROUP BY customer.customer_id, name
HAVING COUNT(DISTINCT menu_id) > 2

--Total Delievery for a customer which is greater than 2 --

select FIRST_NAME AS CUSTOMER_NAME, COUNT(DISTINCT DELIEVERS_ID) as TOTAL_DELIEVERY from delievers
INNER JOIN delievery_agent on delievers.CUSTOMER_ID = DELIEVERY_AGENT.DA_ID
GROUP BY delievers.customer_id, FIRST_NAME
HAVING COUNT(DISTINCT DELIEVERS_ID) > 1;

-- Payment Process used (ROLLUP) --

select count(*), payment_mode from orders GROUP BY ROLLUP(payment_mode)

-- Commision Offered Restaurant Count --

select commision_offered, count(commision_offered) from restaurant group by CUBE(commision_offered)

-- max order date over payment mode --

SELECT  MAX(order_date) OVER (ORDER BY payment_mode), payment_mode FROM orders;

-- max menu as per customer_id --

SELECT  customer_id, MAX(menu_id) OVER (order by customer_id) FROM orders;

