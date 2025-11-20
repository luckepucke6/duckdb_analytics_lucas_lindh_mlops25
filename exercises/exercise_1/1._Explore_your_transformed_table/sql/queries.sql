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

-- a) Count number of Data engineers jobs. For simplicity just go for job_title Data Engineer.
SELECT
    COUNT(*) AS antal_data_engineer
FROM
    cleaned_salaries
WHERE
    job_title = 'Data Engineer';

-- b) Count number of unique job titles in total.
SELECT
    COUNT(DISTINCT job_title)
FROM
    cleaned_salaries;

-- c) Find out how many jobs that goes into each salary level.
SELECT
    salary_level,
    COUNT(*) AS jobs
FROM
    cleaned_salaries
GROUP BY
    salary_level;

-- d) Find out the median and mean salaries for each seniority levels.
SELECT
    experience_level,
    median (salary_per_month_in_sek) AS median_salary_per_month,
    ROUND(mean (salary_per_month_in_sek)) AS mean_salary_per_month
FROM
    cleaned_salaries
GROUP BY
    experience_level
ORDER BY
    experience_level;

-- e) Find out the top earning job titles based on their median salaries and how much they earn.
SELECT
    job_title,
    median (salary_per_month_in_sek) AS median_salary_per_month
FROM
    cleaned_salaries
GROUP BY
    job_title
ORDER BY
    median_salary_per_month DESC
LIMIT
    5;

-- f) How many percentage of the jobs are fully remote, 50 percent remote and fully not remote.
SELECT
    remote_ratio,
    COUNT(*) AS antal_job,
    ROUND(
        COUNT(*) * 100 / (
            SELECT
                COUNT(*)
            FROM
                cleaned_salaries
        ),
        1
    ) AS procentandel
FROM
    cleaned_salaries
GROUP BY
    remote_ratio
ORDER BY
    remote_ratio;

-- g) Pick out a job title of interest and figure out if company size affects the salary.
-- Make a simple analysis as a comprehensive one requires causality investigations which are much harder to find.

-- Här undersöker vi vilka roller som har flest 'arbetare' för att se vilken som är bra för analys
SELECT 
    job_title,
    COUNT(*) AS antal
FROM cleaned_salaries
GROUP BY job_title
ORDER BY antal DESC;

-- Här kollar vi på vad medelvärdet på månadslön är för varje company_size för Data Analyst
SELECT
    company_size,
    median(salary_per_month_in_sek) AS median_månadslön
FROM
    cleaned_salaries
WHERE
    job_title = 'Data Analyst'
GROUP BY company_size
ORDER BY median_månadslön DESC;