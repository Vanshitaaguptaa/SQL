use olist;
show tables in olist;
-- 1. Give product ids and its product names in Portuguese?
Select product_id, product_category_name from olist_products_dataset;

-- 2. How many unique customers do we have?
Select count(distinct customer_unique_id) from olist_customers_dataset;

-- 3. Show all unique customer with using distinct keyword?
Select distinct customer_unique_id from olist_customers_dataset;

-- 4. What is the maximum no of instalments accepted by the company?
Select max(payment_installments) from olist_order_payments_dataset;

-- 5. What is the average no. Of instalment that the customer chooses (round off
-- the number to nearest zero)?
Select round(avg(payment_installments),0) as `avg no. of installments` from olist_order_payments_dataset;

-- 6. Create a consolidated list of customer ids and seller ids for all customer &
-- seller in the sao paulo city?
Select customer_id as `customers and sellers IDs from sao paulo` from olist_customers_dataset where customer_city='Sao Paulo'
UNION
Select seller_id from olist_sellers_dataset where seller_city='Sao Paulo';

-- 7. Give product ids and its product names in Portuguese & English?
Select product_id, p1.product_category_name as product_category_name_portuguese , p2.product_category_name_english 
from olist_products_dataset p1, product_category_name_translation p2
where p1.product_category_name=p2.product_category_name;

-- 8. List down product id where no product category id defined? (Hint: check for
-- length)
Select product_id from olist_products_dataset where product_category_name is NULL;

-- 9. List down product id where no product category id defined? (Hint: check for
-- length)
Select product_id from olist_products_dataset where product_category_name is NULL;

-- 10. Extract only the date part from order purchase timestamp string?
Select date(order_purchase_timestamp) from olist_orders_dataset;