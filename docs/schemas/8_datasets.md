```sql
DROP TABLE IF EXISTS Datasets CASCADE;


-- SCHEMA
CREATE TABLE Datasets (

    -- General
	dataset_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    dataset_name CHARACTER VARYING(255) NOT NULL,
    dataset_description CHARACTER VARYING(255) NOT NULL,
    metadata_id INTEGER REFERENCES Metadata (metadata_id) ON UPDATE CASCADE ON DELETE CASCADE,
    query CHARACTER VARYING(255) NOT NULL,
);


-- EXAMPLE-DATA

-- EnviroCar API
INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Tracks', 'The Tracks endpoint');

INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Phenomenons', 'The Phenomenons endpoint');

INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Sensors', 'The Sensors endpoint');

INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Groups', 'The Groups endpoint');

INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Users', 'The Users endpoint');

INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Measurements', 'The Measurements endpoint');


-- OCT API (Connectors & Queries)
INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Measurements', 'The Measurements endpoint');

INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Measurements', 'The Measurements endpoint');

INSERT INTO Apps (created, updated, app_name, app_description, token, email_address, first_name, last_name)
VALUES (now(), now(), 'Measurements', 'The Measurements endpoint');

```
