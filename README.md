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

### Arithmetic Operations

1. Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order. 
   Limit the results to the first 10 orders, and include the id and account_id fields. 

2. Write a query that finds the percentage of revenue that comes from poster paper for each order. 
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
