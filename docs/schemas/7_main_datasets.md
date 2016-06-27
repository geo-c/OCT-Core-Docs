```sql
DROP TABLE IF EXISTS Main_Datasets CASCADE;


-- SCHEMA
CREATE TABLE Main_Datasets (

    -- General
    md_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    ds_id INTEGER NOT NULL REFERENCES Datastores (ds_id) ON UPDATE CASCADE ON DELETE CASCADE,
    endpoint_id INTEGER NOT NULL REFERENCES Endpoints (endpoint_id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_by CHARACTER VARYING(255) NOT NULL REFERENCES Admins (username) ON UPDATE CASCADE ON DELETE CASCADE,
    md_name CHARACTER VARYING(255) NOT NULL,
    md_description CHARACTER VARYING(255) NOT NULL,
    publisher CHARACTER VARYING(255) NOT NULL,
    published CHARACTER VARYING(255) NOT NULL,
    license CHARACTER VARYING(255)
);


-- EXAMPLE-DATA
INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 1, 1, 'n_schi16', 'Water gauges', 'Datasets about a mobile water gauge sensor network', 'Nicholas Schiestel', 'July 2016', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 1, 1, 'n_schi16', 'Plants', 'Dataset about plants', 'Nicholas Schiestel', 'June 2016', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 8, 2, 'n_schi16', 'EnviroCar', 'The EnviroCar Project', 'Institute for Geoinformatics', '2013-01-01', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 8, 3, 'test', 'EnviroCar', 'The EnviroCar Project', 'Institute for Geoinformatics', '2013-01-01', 'MIT');
```
