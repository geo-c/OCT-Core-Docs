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
    'VIRTUOSO'
);


-- SCHEMA
CREATE TABLE Datastores (

    -- General
    ds_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    ds_description CHARACTER VARYING(255) NOT NULL,
    ds_host CHARACTER VARYING(255) NOT NULL,
    ds_port INTEGER NOT NULL,
    db_instance CHARACTER VARYING(255),
    db_user CHARACTER VARYING(255),
    db_password CHARACTER VARYING(255),

    -- Type
    ds_type types NOT NULL
);


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
