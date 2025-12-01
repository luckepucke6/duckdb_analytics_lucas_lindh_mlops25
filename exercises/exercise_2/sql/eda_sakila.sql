-- 1a)
DESC;

-- 1b)
SELECT
    'SELECT * FROM main.' || table_name || ' LIMIT 20;' AS query
FROM
    information_schema.tables
WHERE
    table_schema = 'main';