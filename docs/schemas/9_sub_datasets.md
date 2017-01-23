```sql
DROP TABLE IF EXISTS Sub_Datasets CASCADE;


-- SCHEMA
CREATE TABLE public.sub_datasets
(
  sd_id integer NOT NULL DEFAULT nextval('sub_datasets_sd_id_seq'::regclass),
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  md_id integer,
  sd_name character varying(255) NOT NULL,
  sd_description character varying(255) NOT NULL,
  CONSTRAINT sub_datasets_pkey PRIMARY KEY (sd_id),
  CONSTRAINT sub_datasets_md_id_fkey FOREIGN KEY (md_id)
      REFERENCES public.main_datasets (md_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)


-- EXAMPLE-DATA
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
```
