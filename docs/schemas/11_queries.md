```sql
DROP TABLE IF EXISTS Queries CASCADE;


-- SCHEMA
CREATE TABLE Queries (

    -- General
	query_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    dataset_id INTEGER REFERENCES Dataset (dataset_id) ON UPDATE CASCADE ON DELETE CASCADE
    query_method CHARACTER VARYING(255),
    query_intern CHARACTER VARYING(255) NOT NULL,
    query_description CHARACTER VARYING(255) NOT NULL,
);

-- EXAMPLE-DATA

-- EnviroCar API
INSERT INTO Datasets (created, updated, dataset_id, query_method, query_intern, query_description)
VALUES (now(), now(), 1, 'GET', '/tracks', 'List all Tracks');

INSERT INTO Datasets (created, updated, dataset_id, query_method, query_intern, query_description)
VALUES (now(), now(), 2, 'GET', '/phenomenons', 'List all Phenomenons');

-- OCT API
INSERT INTO Datasets (created, updated, dataset_id, query_method, query_intern, query_description)
VALUES (now(), now(), 7, '', 'SELECT * FROM Sensors ;', 'List all Sensors');

INSERT INTO Datasets (created, updated, dataset_id, query_method, query_intern, query_description)
VALUES (now(), now(), 7, '', 'SELECT * FROM Sensors sensors JOIN Water_Bodies water_bodies ON sensors.water_body_id=water_bodies.water_body_id;', 'List all Sensors with related Water Body');

INSERT INTO Datasets (created, updated, dataset_id, query_method, query_intern, query_description)
VALUES (now(), now(), 8, '', 'SELECT * FROM Water_Bodies ORDER BY name;', 'List all Water Bodies, sort by name');

INSERT INTO Datasets (created, updated, dataset_id, query_method, query_intern, query_description)
VALUES (now(), now(), 9, '', 'SELECT * FROM Measurements;', 'List all Measurements');

INSERT INTO Datasets (created, updated, dataset_id, query_method, query_intern, query_description)
VALUES (now(), now(), 9, '', 'SELECT * FROM Measurements WHERE measurement_id=1;', 'Retrieve a Measurement by its Id, example: measurement_id=1');

INSERT INTO Datasets (created, updated, dataset_id, query_method, query_intern, query_description)
VALUES (now(), now(), 9, '', 'SELECT * FROM Measurements WHERE measurement_id=1;', 'Retrieve a Measurement by its Id, example: measurement_id=1');
```
