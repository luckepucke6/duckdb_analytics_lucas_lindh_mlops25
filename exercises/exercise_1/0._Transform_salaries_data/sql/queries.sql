SELECT
    *
FROM
    salaries_exercise;

-- a) Transform employment type column based on this table
SELECT
    CASE employment_type
        WHEN 'CT' THEN 'Contract'
        WHEN 'FL' THEN 'Freelance'
        WHEN 'PT' THEN 'Part time'
        WHEN 'FT' THEN 'Full time'
        ELSE employment_type
    END AS employment_type
FROM
    salaries_exercise;

-- b) Do similar for company size, but you have to figure out what the abbreviations could stand for
SELECT
    CASE company_size
        WHEN 'L' THEN 'Large'
        WHEN 'S' THEN 'Small'
        WHEN 'M' THEN 'Medium'
        ELSE company_size
    END AS company_size
FROM
    salaries_exercise;

-- c) Make a salary column with Swedish currency for yearly salary
SELECT
    salary,
    salary * 10.50 AS salary_in_sek
FROM
    salaries_exercise;

-- d) Make a salary column with Swedish currency for monthly salary
SELECT
    salary,
    salary * 10.50 AS salary_in_sek,
    salary_in_sek / 12 AS salary_per_month_in_sek
FROM
    salaries_exercise;

-- DESC
SELECT
    salary,
    salary * 10.50 AS salary_in_sek,
    salary_in_sek / 12 AS salary_per_month_in_sek
FROM
    salaries_exercise
ORDER BY
    salary_per_month_in_sek DESC;

-- e) Make a salary_level column with the following categories: low, medium, high, insanely_high.
-- Decide your thresholds for each category. Make it base on the monthly salary in SEK.
SELECT
    salary * 10.50 AS salary_in_sek,
    (salary * 10.50) / 12 AS salary_per_month_in_sek,
    CASE
        WHEN salary_per_month_in_sek >= 100000 THEN 'insanely_high'
        WHEN salary_per_month_in_sek >= 60000 THEN 'high'
        WHEN salary_per_month_in_sek >= 30000 THEN 'medium'
        else 'low'
    END AS salary_level
FROM
    salaries_exercise;

-- f) Choose the following columns to include in your table:
-- experience_level, employment_type, job_title, salary_annual_sek, salary_monthly_sek, remote_ratio, company_size, salary_level
SELECT
    experience_level,
    job_title,
    remote_ratio,
    CASE employment_type
        WHEN 'CT' THEN 'Contract'
        WHEN 'FL' THEN 'Freelance'
        WHEN 'PT' THEN 'Part time'
        WHEN 'FT' THEN 'Full time'
        ELSE employment_type
    END AS employment_type,
    CASE company_size
        WHEN 'L' THEN 'Large'
        WHEN 'S' THEN 'Small'
        WHEN 'M' THEN 'Medium'
        ELSE company_size
    END AS company_size,
    salary * 10.50 AS salary_in_sek,
    (salary * 10.50) / 12 AS salary_per_month_in_sek,
    CASE
        WHEN (salary * 10.50) / 12 >= 100000 THEN 'insanely_high'
        WHEN (salary * 10.50) / 12 >= 60000 THEN 'high'
        WHEN (salary * 10.50) / 12 >= 30000 THEN 'medium'
        else 'low'
    END AS salary_level
FROM
    salaries_exercise;

CREATE TABLE
    cleaned_salaries AS
SELECT
    experience_level,
    job_title,
    remote_ratio,
    CASE employment_type
        WHEN 'CT' THEN 'Contract'
        WHEN 'FL' THEN 'Freelance'
        WHEN 'PT' THEN 'Part time'
        WHEN 'FT' THEN 'Full time'
        ELSE employment_type
    END AS employment_type,
    CASE company_size
        WHEN 'L' THEN 'Large'
        WHEN 'S' THEN 'Small'
        WHEN 'M' THEN 'Medium'
        ELSE company_size
    END AS company_size,
    salary * 10.50 AS salary_in_sek,
    (salary * 10.50) / 12 AS salary_per_month_in_sek,
    CASE
        WHEN (salary * 10.50) / 12 >= 100000 THEN 'insanely_high'
        WHEN (salary * 10.50) / 12 >= 60000 THEN 'high'
        WHEN (salary * 10.50) / 12 >= 30000 THEN 'medium'
        else 'low'
    END AS salary_level
FROM
    salaries_exercise;