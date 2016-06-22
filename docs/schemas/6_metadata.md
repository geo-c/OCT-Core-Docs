```sql
DROP TABLE IF EXISTS Metadata CASCADE;


-- SCHEMA
CREATE TABLE Metadata (

    -- General
    metadata_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    metadata_name CHARACTER VARYING(255) NOT NULL,
    metadata_description CHARACTER VARYING(255) NOT NULL,
    datasource_id INTEGER NOT NULL REFERENCES Datasources (datasource_id) ON UPDATE CASCADE ON DELETE CASCADE,
    metadata_prefix NOT NULL REFERENCES Prefixes (prefix_id) ON UPDATE CASCADE ON DELETE CASCADE
    publisher CHARACTER VARYING(255) NOT NULL,
    published_on TIMESTAMP WITH TIME ZONE NOT NULL,
    license CHARACTER VARYING(255)
);


-- EXAMPLE-DATA
INSERT INTO Metadata (created, updated, metadata_name, metadata_description, endpoint, publisher, published_on, license)
VALUES (now(), now(), 'EnviroCar', 'The EnviroCar Project', 1, 'Ifgi', '2013-01-01', 'MIT');

INSERT INTO Metadata (created, updated, metadata_name, metadata_description, endpoint, publisher, published_on, license)
VALUES (now(), now(), 'Water gauges', 'Water levels of the river \"Werse\"', 2, 'Ifgi', '2016-07-20', 'MIT');
```
