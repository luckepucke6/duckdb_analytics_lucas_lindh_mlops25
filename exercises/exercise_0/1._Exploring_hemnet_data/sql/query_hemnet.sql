-- b)
SELECT
    *
FROM
    data_hemnet;

-- c)
SELECT
    COUNT(*)
FROM
    data_hemnet;

-- d)
desc data_hemnet;

-- e)
SELECT
    *
FROM
    data_hemnet
ORDER BY
    final_price DESC
LIMIT
    5;

-- f)
SELECT
    *
FROM
    data_hemnet
ORDER BY
    final_price
LIMIT
    5;

-- g)
SELECT
    MIN(final_price) AS min_final_price,
    MEAN (final_price) AS mean_final_price,
    MEDIAN (final_price) AS median_final_price,
    MAX(final_price) AS max_final_price
FROM
    data_hemnet;

-- h)
SELECT
    MIN(price_per_area),
    MEAN (price_per_area),
    MEDIAN (price_per_area),
    MAX(price_per_area)
FROM
    data_hemnet;

-- i)
SELECT
    COUNT(DISTINCT commune)
FROM
    data_hemnet;

-- j)
SELECT
    100.0 * SUM(final_price > 10000000) / COUNT(*) AS percent_over_10m
FROM
    data_hemnet;