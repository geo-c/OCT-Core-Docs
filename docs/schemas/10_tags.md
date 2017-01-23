```sql
DROP TABLE IF EXISTS Tags CASCADE;


-- SCHEMA
CREATE TABLE public.tags
(
  tag_id integer NOT NULL DEFAULT nextval('tags_tag_id_seq'::regclass),
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  sd_id integer NOT NULL,
  tag_name character varying(255) NOT NULL,
  CONSTRAINT tags_pkey PRIMARY KEY (tag_id),
  CONSTRAINT tags_sd_id_fkey FOREIGN KEY (sd_id)
      REFERENCES public.sub_datasets (sd_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)


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
