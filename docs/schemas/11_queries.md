```sql
DROP TABLE IF EXISTS Queries CASCADE;


-- SCHEMA
CREATE TABLE public.queries
(
  query_id integer NOT NULL DEFAULT nextval('queries_query_id_seq'::regclass),
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  sd_id integer NOT NULL,
  query_intern text,
  query_extern character varying(500),
  query_description character varying(500) NOT NULL,
  active boolean,
  CONSTRAINT queries_pkey PRIMARY KEY (query_id),
  CONSTRAINT queries_sd_id_fkey FOREIGN KEY (sd_id)
      REFERENCES public.sub_datasets (sd_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)

-- EXAMPLE-DATA
INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 1, 'SELECT * FROM Sensors;', NULL, 'List all Sensors');

INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 1, 'SELECT * FROM Sensors sensors JOIN Shapes water_bodies ON sensors.water_body_id=water_bodies.water_body_id;', NULL, 'List all Sensors with their related Water Body');

INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 2, 'SELECT * FROM Shapes;', NULL, 'List all Water Bodies');

INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 2, 'SELECT * FROM Measurements;', NULL, 'List all Water Gauges (Measurements)');

INSERT INTO Queries (created, updated, sd_id, query_intern, query_extern, query_description)
VALUES (now(), now(), 2, 'SELECT * FROM Measurements WHERE sensor_id=$1;', NULL, 'List all Water Gauges (Measurements) of a Sensor by its sensor_id');

```
