CREATE TABLE IF NOT EXISTS repetition_exercise_0 (
    week INTEGER,
    content TEXT,
    lectures TEXT,
    exercise TEXT
);

INSERT INTO repetition_exercise_0 VALUES
(1, 'intro query, ingest csv, CLI, table, select, filtering', '00-05', '0'),
(2, 'CRUD, conditionals, sorting, functions, grouping, strings', '06-08', '1'),
(3, 'temporal data, check, set operations', '09-11', '2'),
(4, 'joins, subquery, views, CTE', '12-15', '3, lab'),
(5, 'window functions, python & duckdb', '16-19', 'lab'),
(6, 'macros, sql injection', '20-21', 'lab');