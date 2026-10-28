# DuckDB customer data setup

From the project root, ensure `customers.csv` is in the `data/` directory. Create `sql/setup.sql` with the following statements:

```sql
CREATE TABLE customers AS
SELECT * FROM read_csv_auto('data/customers.csv');

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
# journey-001
