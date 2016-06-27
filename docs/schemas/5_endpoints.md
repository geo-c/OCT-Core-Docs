```sql
DROP TABLE IF EXISTS Endpoints CASCADE;


-- SCHEMA
CREATE TABLE Endpoints (

    -- General
    endpoint_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
	endpoint_host CHARACTER VARYING(255) NOT NULL,
	endpoint_port INTEGER NOT NULL DEFAULT 80,
	endpoint_path CHARACTER VARYING(255) NOT NULL DEFAULT '/'
);


-- EXAMPLE-DATA
INSERT INTO Endpoints (created, updated, endpoint_host, endpoint_port, endpoint_path)
VALUES (now(), now(), 'http://giv-oct.uni-muenster.de', 80, '/api'),

INSERT INTO Endpoints (created, updated, endpoint_host, endpoint_port, endpoint_path)
VALUES (now(), now(), 'http://envirocar.org', 80, '/api/stable/'),
```
