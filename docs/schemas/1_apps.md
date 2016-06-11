```sql
DROP TABLE IF EXISTS Apps CASCADE;
DROP TABLE IF EXISTS Logs CASCADE;


-- SCHEMA
CREATE TABLE Apps (

    -- General
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE,

    -- Attributes
	name CHARACTER VARYING(255) NOT NULL,
    token CHARACTER VARYING(255) NOT NULL,
    email_address CHARACTER VARYING(255) NOT NULL,
    first_name CHARACTER VARYING(255) NOT NULL,
    last_name CHARACTER VARYING(255) NOT NULL
);


-- EXAMPLE-DATA
INSERT INTO Apps (created, updated, name, token, email_address, first_name, last_name)
VALUES (now(), now(), '1st_app', 'abc.123456789.xyz', 'sitcomlab245@gmail.com', 'OCT', 'Admin');
```
