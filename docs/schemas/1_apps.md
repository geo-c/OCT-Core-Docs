```sql
DROP TABLE IF EXISTS Apps CASCADE;
DROP TABLE IF EXISTS Logs CASCADE;


-- SCHEMA
CREATE TABLE Apps (

    -- General
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
	app_name CHARACTER VARYING(255) NOT NULL UNIQUE,
	app_description CHARACTER VARYING(255),
    token CHARACTER VARYING(255) NOT NULL,
    email_address CHARACTER VARYING(255) NOT NULL,
    first_name CHARACTER VARYING(255) NOT NULL,
    last_name CHARACTER VARYING(255) NOT NULL
);


-- EXAMPLE-DATA
INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), '1st_app', '', 'abc.123456789.xyz', 'sitcomlab245@gmail.com', 'OCT', 'Admin');
```
