-- 0.
-- a)
SELECT
    exercise
FROM
    repetition_exercise_0;

-- b)
SELECT
    lectures
FROM
    repetition_exercise_0;

-- c)
SELECT
    *
FROM
    repetition_exercise_0
WHERE
    week = 3;

-- d)
SELECT
    *
FROM
    repetition_exercise_0
WHERE
    week BETWEEN 2 AND 4;

-- e)
SELECT
    COUNT(week) AS how_many_weeks
FROM
    repetition_exercise_0;

-- f)
SELECT
    COUNT(content) AS how_many_content
FROM
    repetition_exercise_0;