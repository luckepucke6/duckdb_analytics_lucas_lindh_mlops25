-- a)
SELECT
    *
FROM
    course
WHERE
    content_type = 'exercise';

-- b)
SELECT
    *
FROM
    course
WHERE
    content_type = 'lecture';

-- c)
SELECT
    *
FROM
    course
WHERE
    week = '48';

-- d)
SELECT
    *
FROM
    course
WHERE
    week BETWEEN 47 AND 49;

-- e)
SELECT
    COUNT(*)
FROM
    course
WHERE
    content_type = 'lecture';

-- f)
SELECT
    COUNT(*)
FROM
    course
WHERE
    content_type <> 'lecture';

-- g)
SELECT DISTINCT
    COUNT(*)
FROM
    course
WHERE
    content_type;