CREATE SCHEMA IF NOT EXISTS database_schema;

CREATE SCHEMA IF NOT EXISTS programming_schema;

FROM
    information_schema.schemata;

SELECT
    *
FROM
    information_schema.schemata
WHERE
    catalog_name = 'glossory';

CREATE SEQUENCE IF NOT EXISTS id_sql_sequence START 1;

CREATE SEQUENCE IF NOT EXISTS id_duckdb_sequence START 1;

-- Kontrollera sekvenserna ovan
FROM
    pg_catalog.pg_sequences;

-- create tables
CREATE TABLE
    IF NOT EXISTS database_schema.sql (
        id INTEGER DEFAULT nextval ('id_sql_sequence'),
        word STRING,
        description STRING
    );

CREATE TABLE
    IF NOT EXISTS database_schema.duckdb (
        id INTEGER DEFAULT nextval ('id_duckdb_sequence'),
        word STRING,
        description STRING
    );