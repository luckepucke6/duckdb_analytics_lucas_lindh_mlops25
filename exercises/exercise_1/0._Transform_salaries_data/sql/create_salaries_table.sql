CREATE TABLE
    IF NOT EXISTS salaries_exercise AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/salaries.csv')
    );