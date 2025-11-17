-- safeguarding - make sure to get the rows we want
SELECT
    *
FROM
    database_schema.duckdb_table
WHERE
    id IN (1, 2, 3, 10);

UPDATE database_schema.duckdb_table
SET
    learnt = TRUE
WHERE
    id IN (1, 2, 3, 10);