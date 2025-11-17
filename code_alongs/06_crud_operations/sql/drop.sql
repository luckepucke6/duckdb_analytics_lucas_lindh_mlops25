-- throws away a table
DROP table database_schema.sql_table;

-- gives dependency error because the schema is not empty
DROP SCHEMA database_schema;

-- to delete this schema and all its content
DROP SCHEMA database_schema CASCADE;