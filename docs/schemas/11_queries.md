```sql
DROP TABLE IF EXISTS Queries CASCADE;


-- SCHEMA
CREATE TABLE Queries (

    -- General
	query_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    sd_id INTEGER REFERENCES Dataset (dataset_id) ON UPDATE CASCADE ON DELETE CASCADE
    query_intern CHARACTER VARYING(255) NOT NULL,
    query_extern CHARACTER VARYING(255) NOT NULL,
    query_description CHARACTER VARYING(255) NOT NULL,
);

-- EXAMPLE-DATA
INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 1, 'SELECT * FROM Sensors;', '', 'List all Sensors');

INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 1, 'SELECT * FROM Sensors sensors JOIN Shapes water_bodies ON sensors.water_body_id=water_bodies.water_body_id;', '', 'List all Sensors with their related Water Body');

INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 2, 'SELECT * FROM Shapes;', '', 'List all Water Bodies');

INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 2, 'SELECT * FROM Measurements;', '', 'List all Water Gauges (Measurements)');

INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 2, 'SELECT * FROM Measurements WHERE sensor_id=$1;', '', 'List all Water Gauges (Measurements) of a Sensor by its sensor_id');

```
