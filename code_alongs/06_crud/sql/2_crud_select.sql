SELECT * FROM database_schema.sql;

-- Motsvarar SELECT * FROM, dock endast i duckdb
FROM database_schema.duckdb;

SELECT * FROM database_schema.duckdb WHERE word = 'ARRAY';