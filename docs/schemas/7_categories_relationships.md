```sql
DROP TABLE IF EXISTS Categories_Relationships CASCADE;


-- SCHEMA
CREATE TABLE public.categories_relationships
(
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  md_id integer NOT NULL,
  category_id integer NOT NULL,
  CONSTRAINT categories_relationships_category_id_fkey FOREIGN KEY (category_id)
      REFERENCES public.categories (category_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT categories_relationships_md_id_fkey FOREIGN KEY (md_id)
      REFERENCES public.main_datasets (md_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)


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
