-- a) Transform employment type column 
SELECT
    CASE
        WHEN employment_type = 'CT' THEN 'Contract'
        WHEN employment_type = 'FL' THEN 'Freelance'
        WHEN employment_type = 'PT' THEN 'Part time'
        WHEN employment_type = 'FT' THEN 'Full time'
    END AS employment_type,
    * EXCLUDE (employment_type)
FROM
    data_jobs;


-- b) Transform company size
SELECT
    CASE
        WHEN company_size = 'S' THEN 'Small'
        WHEN company_size = 'M' THEN 'Medium'
        WHEN company_size = 'L' THEN 'Large'
    END AS company_size,
    * EXCLUDE (company_size)
FROM
    data_jobs;


-- c) Make a salary column with Swedish currency for yearly salary
SELECT
    *,
    ROUND(salary_in_usd * 9.54) AS yearly_salary_sek
FROM
    data_jobs;


-- d) Make e new column with monthly salary in sek
SELECT
    *,
    ROUND((salary_in_usd * 9.54) / 12) AS monthly_salary_sek
FROM
    data_jobs;


-- e) Make a salary_level column based on monthly salary in sek
SELECT
    CASE 
        WHEN ROUND((salary_in_usd * 9.54) / 12) < 25000 THEN 'low'
        WHEN ROUND((salary_in_usd * 9.54) / 12) BETWEEN 25001 AND 45000 THEN 'medium'
        WHEN ROUND((salary_in_usd * 9.54) / 12) BETWEEN 45001 AND 80000 THEN 'high'
        ELSE 'insanely_high'
    END AS salary_level, *
FROM data_jobs;
