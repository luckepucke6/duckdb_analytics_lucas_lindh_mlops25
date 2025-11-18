-- LIKE operator in WHERE clause -> filter rows
-- LIKE operator with wildcards to search for a pattern
SELECT
    example,
    lower(trim(example)) AS cleaned_example
FROM
    staging.sql_glossary;

-- search for select
SELECT
    example,
    lower(trim(example)) AS cleaned_example
FROM
    staging.sql_glossary
WHERE
    cleaned_example LIKE 'select%'; -- wildcard % matches 0 or more chars


-- wildcard _ represents one character
SELECT
    example,
    trim(example) AS cleaned_example
FROM
    staging.sql_glossary
WHERE
    cleaned_example LIKE 'S_LECT%';

-- regular expression
SELECT
    lower(trim(description)) AS cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '^c');

-- starting with C or S
SELECT
    trim(description) AS cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '^[CS]');

-- \b makes it match exactly select word (e.g. doesny match selects)
SELECT
    lower(description) AS cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, 'select\b');

-- [a-f] matches range of characters
-- ^[a-f] matches starting with characters a to f
SELECT
    lower(trim(description)) AS cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '^[a-f]');
    
-- [^a-f] matches any character not in range a-f
-- ^[^a-f] starting with characters not in range a-f
SELECT
    lower(trim(description)) AS cleaned_description
FROM
    staging.sql_glossary
WHERE
    regexp_matches (cleaned_description, '^[^a-f]');

SELECT
    description,
    regexp_replace(trim(description), ' +', ' ','g') AS cleaned_description
FROM
    staging.sql_glossary;