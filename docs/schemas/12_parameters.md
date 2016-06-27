```sql
DROP TABLE IF EXISTS Parameters CASCADE;


-- SCHEMA
CREATE TABLE Parameters (

    -- General
	parameter_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    query_id INTEGER REFERENCES Queries (query_id) ON UPDATE CASCADE ON DELETE CASCADE
    parameter_value CHARACTER VARYING(255)
);

-- EXAMPLE-DATA
INSERT INTO Parameters (created, updated, query_id, parameter_value)
VALUES (now(), now(), 5, '1');
```
