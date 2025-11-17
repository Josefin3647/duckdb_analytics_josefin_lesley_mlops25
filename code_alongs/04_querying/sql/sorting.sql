SELECT
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd;


-- Descending order
SELECT
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd DESC;

-- sorts descending on salary_in_usd and
-- ascending on job_title
SELECT
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd DESC,
    job_title ASC;