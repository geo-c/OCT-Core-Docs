```sql
DROP TABLE IF EXISTS Datastores CASCADE;
DROP TYPE IF EXISTS categories CASCADE;

-- ENUM
CREATE TYPE categories AS ENUM (
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
    datasource_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    host CHARACTER VARYING(255) NOT NULL,
    port_number INTEGER NOT NULL,
    datasource_description CHARACTER VARYING(255) NOT NULL,
    db_instance CHARACTER VARYING(255),
    db_user CHARACTER VARYING(255),
    db_password CHARACTER VARYING(255),

    -- Category
    category categories NOT NULL
);


-- EXAMPLE-DATA
INSERT INTO Datasources (created, updated, category, host, port_number, datasource_description, db_instance, db_user, db_password)
VALUES (now(), now(), 'REST', 'http://envirocar.org', 80, 'The EnviroCar API', '', '', '');

INSERT INTO Datasources (created, updated, category, host, port_number, datasource_description, db_instance, db_user, db_password)
VALUES (now(), now(), 'POSTGRESQL', '127.0.0.1', 5432, 'OCT-PostgreSQL', 'oct_data', 'oct', 'oct');

INSERT INTO Datasources (created, updated, category, host, port_number, datasource_description, db_instance, db_user, db_password)
VALUES (now(), now(), 'MONGODB', '127.0.0.1', 27010, 'OCT-MongoDB', '', '', '');

INSERT INTO Datasources (created, updated, category, host, port_number, datasource_description, db_instance, db_user, db_password)
VALUES (now(), now(), 'COUCHDB', '127.0.0.1', 8000, 'OCT-CouchDB', '', '', '');

INSERT INTO Datasources (created, updated, category, host, port_number, datasource_description, db_instance, db_user, db_password)
VALUES (now(), now(), 'CKAN', '127.0.0.1', 5000, 'OCT-CKAN', '', '', '');

INSERT INTO Datasources (created, updated, category, host, port_number, datasource_description, db_instance, db_user, db_password)
VALUES (now(), now(), 'PARLIAMENT', '127.0.0.1', 4000, 'OCT-Parliament', '', '', '');

INSERT INTO Datasources (created, updated, category, host, port_number, datasource_description, db_instance, db_user, db_password)
VALUES (now(), now(), 'VIRTUOSO', '127.0.0.1', 3000, 'OCT-Virtuoso', '', '', '');
```
