-- EXAMPLE-DATA
INSERT INTO Apps (created, updated, app_name, app_hash, app_description, email_address, first_name, last_name)
VALUES (now(), now(), 'test', 'abc123def456ghj789klm', 'test app', 'max@mustermann.com', 'Max', 'Mustermann');

INSERT INTO Admins (created, updated, username, role, password, email_address, first_name, last_name, expires_on)
VALUES (now(), now(), 'n_schi16', 'ADMIN', 'abc123', 'n.schiestel@uni-muenster.de', 'Nicho', 'S.', NULL);

INSERT INTO Admins (created, updated, username, role, password, email_address, first_name, last_name, expires_on)
VALUES (now(), now(), 'test', 'GUEST', 'xyz789', 'testuser@example.org', 'Test', 'User', '2017-01-01');

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

INSERT INTO Endpoints (created, updated, endpoint_host, endpoint_port, endpoint_path)
VALUES (now(), now(), 'http://giv-oct.uni-muenster.de', 80, '/api');

INSERT INTO Endpoints (created, updated, endpoint_host, endpoint_port, endpoint_path)
VALUES (now(), now(), 'http://envirocar.org', 80, '/api/stable/');

INSERT INTO Endpoints (created, updated, endpoint_host, endpoint_port, endpoint_path)
VALUES (now(), now(), 'http://envirocar.org', 80, '/api/dev/');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Population');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Education and Science');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Geography, Geology and Geodata');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Law and Justice');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Health');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Infrastructure, Construction and Housing');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Culture, Leisure, Sport and Tourism');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Public administration, Budget and Taxes');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Politics and Elections');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Social');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Transport and Traffic');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Environment and Climate');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Consumer Protection');

INSERT INTO Categories (created, updated, category_name)
VALUES (now(), now(), 'Economy and Employment');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 1, 1, 'n_schi16', 'Water gauges', 'Datasets about a mobile water gauge sensor network', 'Nicholas Schiestel', 'July 2016', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 1, 1, 'n_schi16', 'Plants', 'Dataset about plants', 'Nicholas Schiestel', 'June 2016', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 8, 2, 'n_schi16', 'EnviroCar', 'The EnviroCar Project', 'Institute for Geoinformatics', '2013-01-01', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 8, 3, 'test', 'EnviroCar', 'The EnviroCar Project', 'Institute for Geoinformatics', '2013-01-01', 'MIT');

INSERT INTO Categories_Relationships (created, updated, md_id, category_id)
VALUES (now(), now(), 1, 6);

INSERT INTO Categories_Relationships (created, updated, md_id, category_id)
VALUES (now(), now(), 1, 11);

INSERT INTO Categories_Relationships (created, updated, md_id, category_id)
VALUES (now(), now(), 1, 12);

INSERT INTO Categories_Relationships (created, updated, md_id, category_id)
VALUES (now(), now(), 2, 11);

INSERT INTO Categories_Relationships (created, updated, md_id, category_id)
VALUES (now(), now(), 3, 11);

INSERT INTO Categories_Relationships (created, updated, md_id, category_id)
VALUES (now(), now(), 3, 12);

INSERT INTO Categories_Relationships (created, updated, md_id, category_id)
VALUES (now(), now(), 4, 11);

INSERT INTO Categories_Relationships (created, updated, md_id, category_id)
VALUES (now(), now(), 4, 12);

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 1, 1, 'n_schi16', 'Water gauges', 'Datasets about a mobile water gauge sensor network', 'Nicholas Schiestel', 'July 2016', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 1, 1, 'n_schi16', 'Plants', 'Dataset about plants', 'Nicholas Schiestel', 'June 2016', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 8, 2, 'n_schi16', 'EnviroCar', 'The EnviroCar Project', 'Institute for Geoinformatics', '2013-01-01', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 8, 3, 'test', 'EnviroCar', 'The EnviroCar Project', 'Institute for Geoinformatics', '2013-01-01', 'MIT');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 1, 'Sensors', 'The Sensors table');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 1, 'Water Bodies', 'The Shapes table');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 1, 'Water Gauges', 'The Measurements table');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 2, 'Family', 'The Families table');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 2, 'Genus', 'The Genera table');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 2, 'Specie', 'The Species table');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 3, 'Tracks', 'The Tracks endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 3, 'Phenomenons', 'The Phenomenons endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 3, 'Sensors', 'The Sensors endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 3, 'Groups', 'The Groups endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 3, 'Users', 'The Users endpoint');

INSERT INTO Sub_Datasets (created, updated, md_id, sd_name, sd_description)
VALUES (now(), now(), 3, 'Measurements', 'The Measurements endpoint');

INSERT INTO Tags (created, updated, sd_id, tag_name)
VALUES (now(), now(), 1, 'Sensors');

INSERT INTO Tags (created, updated, sd_id, tag_name)
VALUES (now(), now(), 1, 'Measurements');

INSERT INTO Tags (created, updated, sd_id, tag_name)
VALUES (now(), now(), 1, 'Car');

INSERT INTO Tags (created, updated, sd_id, tag_name)
VALUES (now(), now(), 1, 'Cars');

INSERT INTO Tags (created, updated, sd_id, tag_name)
VALUES (now(), now(), 2, 'Sensors');

INSERT INTO Tags (created, updated, sd_id, tag_name)
VALUES (now(), now(), 2, 'Measurements');

INSERT INTO Tags (created, updated, sd_id, tag_name)
VALUES (now(), now(), 2, 'Water gauges');

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

INSERT INTO Parameters (created, updated, query_id, parameter_value)
VALUES (now(), now(), 5, '1');

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-20T07:25:32.112Z', 1);

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:43:01.212Z', 1);

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:44:10.002Z', 1);

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:45:32.090Z', 2);

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-24T15:12:45.321Z', 2);