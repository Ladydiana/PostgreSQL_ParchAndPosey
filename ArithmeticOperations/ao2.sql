/* Write a query that finds the percentage of revenue that comes from poster paper for each order. 
   You will need to use only the columns that end with _usd. (Try to do this without using the total column). 
   Include the id and account_id fields.
*/


SELECT 	id, account_id, 
		CASE WHEN (standard_amt_usd+gloss_amt_usd+poster_amt_usd!=0) THEN poster_amt_usd * 100 /(standard_amt_usd+gloss_amt_usd+poster_amt_usd)
		ELSE 0 --'Total revenue is 0. Mybe we could add a default error for these cases'
		END
		as poster_percentage
FROM orders