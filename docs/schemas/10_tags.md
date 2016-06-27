```sql
DROP TABLE IF EXISTS Tags CASCADE;


-- SCHEMA
CREATE TABLE Tags (

    -- General
    tag_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    sd_id INTEGER NOT NULL REFERENCES Sub_Datasets (sd_id) ON UPDATE CASCADE ON DELETE CASCADE,
    tag_name CHARACTER VARYING(255) NOT NULL

);


-- EXAMPLE-DATA
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
```
