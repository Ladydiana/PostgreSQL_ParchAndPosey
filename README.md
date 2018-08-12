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


## Exercises List:

### Arithmetic Operations
1. Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order. 
   Limit the results to the first 10 orders, and include the id and account_id fields. 
