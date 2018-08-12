/*
Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order.
Limit the results to the first 10 orders, and include the id and account_id fields. 
*/

SELECT id, account_id, standard_amt_usd/standard_qty as unit_price
FROM orders
--WHERE standard_qty<>0 
LIMIT 10;