# journey-001
# DuckDB customer data setup
## Environment
DuckDB v2.0.0
git version 2.54.0 (Apple Git-157)
MacOS 27.2

## About the data
- A row in the customer.csv represent a unique customer represented by customer_id.
- The data is synthetic practice data and not real customer information

From the project root, ensure `customers.csv` is in the `data/` directory. Create `sql/setup.sql` with the following statements:

```sql
CREATE TABLE customers AS
SELECT * FROM read_csv_auto('/Users/Yuwa/Projects/Analytic engineer/Project 1/Data/customers.csv');

SELECT COUNT(*) AS customer_count FROM customers;

SELECT * FROM customers ORDER BY customer_id LIMIT 5;
```

Open DuckDB against a fresh database:

```sh
duckdb northline.duckdb
```

At the DuckDB prompt, replay the saved statements:

```text
.read sql/setup.sql
```

Save the actual query outputs in the project’s `evidence/` directory. Use a fresh database for the replay so the `CREATE TABLE` statement does not conflict with an existing `customers` table. Later lessons will add the other tables and explicit types.

