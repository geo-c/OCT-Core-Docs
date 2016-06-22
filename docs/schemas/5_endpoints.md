```sql
DROP TABLE IF EXISTS Prefixes CASCADE;


-- SCHEMA
CREATE TABLE Prefixes (

    -- General
    prefix_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
	host CHARACTER VARYING(255) NOT NULL,
	port_number INTEGER NOT NULL DEFAULT 80,
	path CHARACTER VARYING(255) NOT NULL DEFAULT '/'
);


-- EXAMPLE-DATA
INSERT INTO Prefixes (created, updated, host, port_number, path)
VALUES (now(), now(), 'http://giv-oct.uni-muenster.de', 80, '/api'),

INSERT INTO Prefixes (created, updated, host, port_number, path)
VALUES (now(), now(), 'http://envirocar.org', 80, '/api/stable/'),
```
