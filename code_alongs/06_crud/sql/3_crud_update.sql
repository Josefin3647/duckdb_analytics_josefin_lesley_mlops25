SELECT *
FROM database_schema.duckdb
WHERE id IN (1,2,3,10);

UPDATE database_schema.duckdb
SET learnt = TRUE
WHERE id IN (1,2,3,10);