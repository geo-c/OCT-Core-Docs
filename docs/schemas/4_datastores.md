```sql
DROP TABLE IF EXISTS Datastores CASCADE;
DROP TYPE IF EXISTS types CASCADE;

-- ENUM
CREATE TYPE types AS ENUM (
    'REST',
    'POSTGRESQL',
    'MYSQL',
    'MONGODB',
    'COUCHDB',
    'PARLIAMENT',
    'CKAN',
    'VIRTUOSU'
);


-- SCHEMA
CREATE TABLE public.datastores
(
  ds_id integer NOT NULL DEFAULT nextval('datastores_ds_id_seq'::regclass),
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  ds_description character varying(255),
  ds_host character varying(255),
  ds_port integer,
  db_instance character varying(255),
  db_user character varying(255),
  db_password character varying(255),
  ds_type types NOT NULL,
  CONSTRAINT datastores_pkey PRIMARY KEY (ds_id)
)


-- EXAMPLE-DATA
INSERT INTO Datastores (created, updated, ds_type, ds_description, ds_host, ds_port, db_instance, db_user, db_password)
VALUES (now(), now(), 'POSTGRESQL', 'local PostgreSQL-Database with installed PostGIS-Extension', '127.0.0.1', 5432, 'oct_db', 'oct', 'oct');

INSERT INTO Datastores (created, updated, ds_type, ds_description, ds_host, ds_port, db_instance, db_user, db_password)
VALUES (now(), now(), 'POSTGRESQL', 'extern PostgreSQL-Database', 'http://giv-lodumdata.uni-muenster.de', 5432, 'oct_db_2', 'oct', 'oct');

INSERT INTO Datastores (created, updated, ds_type, ds_description, ds_host, ds_port, db_instance, db_user, db_password)
VALUES (now(), now(), 'MONGODB', 'local MongoDB', '127.0.0.1', 27010, '', '', '');

INSERT INTO Datastores (created, updated, ds_type, ds_description, ds_host, ds_port, db_instance, db_user, db_password)
VALUES (now(), now(), 'COUCHDB', 'local CouchDB', '127.0.0.1', 8000, '', '', '');

INSERT INTO Datastores (created, updated, ds_type, ds_description, ds_host, ds_port, db_instance, db_user, db_password)
VALUES (now(), now(), 'PARLIAMENT', 'local Parliament-Server', '127.0.0.1', 6000, '', '', '');

INSERT INTO Datastores (created, updated, ds_type, ds_description, ds_host, ds_port, db_instance, db_user, db_password)
VALUES (now(), now(), 'CKAN', 'local CKAN-Datastore', '127.0.0.1', 5000, '', '', '');

INSERT INTO Datastores (created, updated, ds_type, ds_description, ds_host, ds_port, db_instance, db_user, db_password)
VALUES (now(), now(), 'VIRTUOSU', 'local Virtuosu-Server', '127.0.0.1', 4000, '', '', '');

INSERT INTO Datastores (created, updated, ds_type, ds_description, ds_host, ds_port, db_instance, db_user, db_password)
VALUES (now(), now(), 'REST', NULL, NULL, NULL, NULL, NULL, NULL);
```
