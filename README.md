# Parch and Posey PostgreSQL database


## Description:

PostgreSQL Parch and Posey Database from the Udacity Bertelsmann Nanodegree Scholarship Challenge.


## Versions:

- pgAdmin 4
- PostgreSQL 10


## Backup:

```bash
cmd> cd C:\Program Files\PostgreSQL\10\bin
cmd> pg_dump -U postgres ParchAndPosey_DB > ParchAndPosey_DB.sql
```

Database backup in folder: <b>Database Dump</b>


## ERD:

[TODO]


## Exercises List:

 [- Arithmetic Operations](https://github.com/Ladydiana/PostgreSQL_ParchAndPosey#arithmetic-operations)
 
 [- Logical Operators](https://github.com/Ladydiana/PostgreSQL_ParchAndPosey#logical-operators)
 
 [- Joins](https://github.com/Ladydiana/PostgreSQL_ParchAndPosey#joins)
 
 

### Arithmetic Operations

**ao1.sql**
1. Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order. 
   Limit the results to the first 10 orders, and include the id and account_id fields. 

**ao2.sql**
1. Write a query that finds the percentage of revenue that comes from poster paper for each order. 
   You will need to use only the columns that end with _usd. (Try to do this without using the total column). 
   Include the id and account_id fields.


### Logical Operators

**lo1.sql**
1. Use the accounts table to find:
- All the companies whose names start with 'C'.
- All companies whose names contain the string 'one' somewhere in the name.
- All companies whose names end with 's'.
	
**lo2.sql**
1. Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and Nordstrom.
2. Use the web_events table to find all information regarding individuals who were contacted via the channel of organic or adwords.
	
**lo3.sql**
1. Use the accounts table to find the account name, primary poc, and sales rep id for all stores except Walmart, Target, and Nordstrom.
2. Use the web_events table to find all information regarding individuals who were contacted via any method except using organic or adwords methods.

**lo4.sql**
1. Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.
2. Using the accounts table find all the companies whose names do not start with 'C' and end with 's'.
3. Use the web_events table to find all information regarding individuals who were contacted via organic or adwords and started their account at any point in 2016 sorted from newest to oldest.

**lo5.sql**
1. Find list of orders ids where either gloss_qty or poster_qty is greater than 4000. Only include the id field in the resulting table.
2. Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000.
3. Find all the company names that start with a 'C' or 'W', and the primary contact contains 'ana' or 'Ana', but it doesn't contain 'eana'.


### Joins

**jo1.sql**
1. Provide a table for all web_events associated with account name of Walmart. There should be three columns. Be sure to include the primary_poc, time of the event, and the channel for each event. Additionally, you might choose to add a fourth column to assure only Walmart events were chosen.
2. Provide a table that provides the region for each sales_rep along with their associated accounts. Your final table should include three columns: the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) according to account name.
3. Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order. Your final table should have 3 columns: region name, account name, and unit price. A few accounts have 0 for total, so I divided by (total + 0.01) to assure not dividing by zero.

**jo2.sql**
1. Provide a table that provides the region for each sales_rep along with their associated accounts. This time only for the Midwest region. Your final table should include three columns: the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) according to account name.
2. Provide a table that provides the region for each sales_rep along with their associated accounts. This time only for accounts where the sales rep has a first name starting with S and in the Midwest region. Your final table should include three columns: the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) according to account name. 
3. Provide a table that provides the region for each sales_rep along with their associated accounts. This time only for accounts where the sales rep has a last name starting with K and in the Midwest region. Your final table should include three columns: the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) according to account name.
4. Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order. However, you should only provide the results if the standard order quantity exceeds 100. Your final table should have 3 columns: region name, account name, and unit price. In order to avoid a division by zero error, adding .01 to the denominator here is helpful total_amt_usd/(total+0.01). 
5. Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order. However, you should only provide the results if the standard order quantity exceeds 100 and the poster order quantity exceeds 50. Your final table should have 3 columns: region name, account name, and unit price. Sort for the smallest unit price first. In order to avoid a division by zero error, adding .01 to the denominator here is helpful (total_amt_usd/(total+0.01). 
6. Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order. However, you should only provide the results if the standard order quantity exceeds 100 and the poster order quantity exceeds 50. Your final table should have 3 columns: region name, account name, and unit price. Sort for the largest unit price first. In order to avoid a division by zero error, adding .01 to the denominator here is helpful (total_amt_usd/(total+0.01). 
7. What are the different channels used by account id 1001? Your final table should have only 2 columns: account name and the different channels. You can try SELECT DISTINCT to narrow down the results to only the unique values.
8. Find all the orders that occurred in 2015. Your final table should have 4 columns: occurred_at, account name, order total, and order total_amt_usd.