CREATE SCHEMA IF NOT EXISTS database_schema;

CREATE SCHEMA IF NOT EXISTS programming_schema;

-- check schemas
FROM
    information_schema.schemata;

SELECT
    *
FROM
    information_schema.schemata
WHERE
    catalog_name = 'glossary';

-- sequences
CREATE SEQUENCE IF NOT EXISTS id_sql_sequence START 1;

CREATE SEQUENCE IF NOT EXISTS id_duckdb_sequence START 1;

CREATE SEQUENCE IF NOT EXISTS id_python_sequence START 1;

FROM
    pg_catalog.pg_sequences;

-- creating glossary tables
CREATE TABLE
    IF NOT EXISTS database_schema.sql_table (
        id INTEGER PRIMARY KEY DEFAULT nextval ('id_sql_sequence'),
        word STRING,
        description STRING
    );

CREATE TABLE
    IF NOT EXISTS database_schema.duckdb_table (
        id INTEGER PRIMARY KEY DEFAULT nextval ('id_duckdb_sequence'),
        word STRING,
        description STRING
    );

CREATE TABLE
    IF NOT EXISTS programming.pyhton (
        id INTEGER PRIMARY KEY DEFAULT nextval ('id_python_sequence'),
        word STRING,
        description STRING
    );