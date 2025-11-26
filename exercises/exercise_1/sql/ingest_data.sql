CREATE TABLE
    IF NOT EXISTS data_jobs AS (
        SELECT
            *
        FROM
            read_csv_auto ('code_alongs/04_querying/data/salaries.csv')
    );