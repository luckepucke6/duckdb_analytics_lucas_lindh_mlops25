-- b)
SELECT
    COUNT(DISTINCT order_id)
FROM
    bike_join;

-- c)
SELECT
    COUNT(DISTINCT product_id)
FROM
    bike_join;

-- d)
SELECT
    COUNT(DISTINCT customer_id) AS customers,
    SUM(list_price) AS total_sales
FROM
    bike_join
WHERE
    product_name = 'Surly Straggler - 2016';

-- e)
SELECT
    COUNT(DISTINCT customer_id) AS customers
FROM
    bike_join
WHERE
    customer_city IN ('San Angelo', 'Orchard Park', 'Merrick');

-- f)
-- UPDATE
ALTER TABLE bike_join
ADD COLUMN manager_name TEXT;

-- ADD
UPDATE bike_join
SET
    manager_name = CASE manager_id
        WHEN 1 THEN 'Amy Andersson'
        WHEN 2 THEN 'Bill Berg'
        WHEN 5 THEN 'Cathy Larsson'
        WHEN 7 THEN 'Davis Lam'
    END;