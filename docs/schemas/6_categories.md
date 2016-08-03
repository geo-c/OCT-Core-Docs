```sql
DROP TABLE IF EXISTS Categories CASCADE;


-- SCHEMA
CREATE TABLE Categories (

    -- General
    category_id SERIAL PRIMARY KEY,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    category_name CHARACTER VARYING(255) NOT NULL
);


-- EXAMPLE-DATA
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
```
