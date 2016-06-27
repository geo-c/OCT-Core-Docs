```sql
DROP TABLE IF EXISTS Categories_Relationships CASCADE;


-- SCHEMA
CREATE TABLE Categories_Relationships (

    -- General
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    md_id INTEGER NOT NULL REFERENCES Main_Datasets (md_id) ON UPDATE CASCADE ON DELETE CASCADE,
    category_id INTEGER NOT NULL REFERENCES Categories (category_id) ON UPDATE CASCADE ON DELETE CASCADE
);


-- EXAMPLE-DATA
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
```
