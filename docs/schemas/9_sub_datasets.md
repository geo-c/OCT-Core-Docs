```sql
DROP TABLE IF EXISTS Sub_Datasets CASCADE;


-- SCHEMA
CREATE TABLE Sub_Datasets (

    -- General
	sd_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
	md_id INTEGER REFERENCES Main_Datasets (md_id) ON UPDATE CASCADE ON DELETE CASCADE
    md_name CHARACTER VARYING(255) NOT NULL,
    md_description CHARACTER VARYING(255) NOT NULL
);


-- EXAMPLE-DATA
INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 1, 'Sensors', 'The Sensors table');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 1, 'Water Bodies', 'The Shapes table');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 1, 'Water Gauges', 'The Measurements table');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 2, 'Family', 'The Families table');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 2, 'Genus', 'The Genera table');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 2, 'Specie', 'The Species table');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 3, 'Tracks', 'The Tracks endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 3, 'Phenomenons', 'The Phenomenons endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 3, 'Sensors', 'The Sensors endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 3, 'Groups', 'The Groups endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 3, 'Users', 'The Users endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, md_name, md_description)
VALUES (now(), now(), 3, 'Measurements', 'The Measurements endpoint');
```
