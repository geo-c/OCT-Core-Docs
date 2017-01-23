```sql
DROP TABLE IF EXISTS Endpoints CASCADE;


-- SCHEMA
CREATE TABLE public.endpoints
(
  endpoint_id integer NOT NULL DEFAULT nextval('endpoints_endpoint_id_seq'::regclass),
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  endpoint_host character varying(255) NOT NULL,
  endpoint_port integer NOT NULL DEFAULT 80,
  endpoint_path character varying(255) NOT NULL DEFAULT '/'::character varying,
  CONSTRAINT endpoints_pkey PRIMARY KEY (endpoint_id)
)


-- EXAMPLE-DATA
INSERT INTO Endpoints (created, updated, endpoint_host, endpoint_port, endpoint_path)
VALUES (now(), now(), 'http://giv-oct.uni-muenster.de', 80, '/api');

INSERT INTO Endpoints (created, updated, endpoint_host, endpoint_port, endpoint_path)
VALUES (now(), now(), 'http://envirocar.org', 80, '/api/stable/');

INSERT INTO Endpoints (created, updated, endpoint_host, endpoint_port, endpoint_path)
VALUES (now(), now(), 'http://envirocar.org', 80, '/api/dev/');
```
