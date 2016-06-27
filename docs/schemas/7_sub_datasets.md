```sql
DROP TABLE IF EXISTS Sub_Datasets CASCADE;


-- SCHEMA
CREATE TABLE Sub_Datasets (

    -- General
	dataset_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
	metadata_id INTEGER REFERENCES Metadata (metadata_id) ON UPDATE CASCADE ON DELETE CASCADE
    dataset_name CHARACTER VARYING(255) NOT NULL,
    dataset_description CHARACTER VARYING(255) NOT NULL,
);


-- EXAMPLE-DATA

-- EnviroCar API
INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 1, 'Tracks', 'The Tracks endpoint');

INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 1, 'Phenomenons', 'The Phenomenons endpoint');

INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 1, 'Sensors', 'The Sensors endpoint');

INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 1, 'Groups', 'The Groups endpoint');

INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 1, 'Users', 'The Users endpoint');

INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 1, 'Measurements', 'The Measurements endpoint');


-- OCT API (Connectors & Queries)
INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 2, 'Sensors', 'The Measurements table');

INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 2, 'Water Bodies', 'The Water Bodies table');

INSERT INTO Sub_Datasets (created, updated, metadata_id, dataset_name, dataset_description)
VALUES (now(), now(), 2, 'Water gauges', 'The Measurements table');

```
