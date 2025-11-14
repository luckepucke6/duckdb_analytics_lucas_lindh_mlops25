CREATE TABLE
    IF NOT EXISTS bike_join AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/bike_joined_table.csv')
    );