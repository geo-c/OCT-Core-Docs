```sql
DROP TABLE IF EXISTS Logs CASCADE;


-- SCHEMA
CREATE TABLE Logs (

    -- General
    -- created TIMESTAMP WITH TIME ZONE NOT NULL,
    -- updated TIMESTAMP WITH TIME ZONE,

    -- Attributes
	app_name CHARACTER VARYING(255) NOT NULL REFERENCES Apps (app_name) ON UPDATE CASCADE ON DELETE CASCADE,
    timestamp TIMESTAMP WITH TIME ZONE NOT NULL
);


-- EXAMPLE-DATA
INSERT INTO Logs (app_name, timestamp)
VALUES ('1st_app', now());
```
