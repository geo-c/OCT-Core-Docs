```sql
DROP TABLE IF EXISTS Main_Datasets CASCADE;


-- SCHEMA
CREATE TABLE public.main_datasets
(
  md_id integer NOT NULL DEFAULT nextval('main_datasets_md_id_seq'::regclass),
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  ds_id integer NOT NULL,
  endpoint_id integer NOT NULL,
  created_by character varying(255) NOT NULL,
  md_name character varying(255) NOT NULL,
  md_description character varying(255) NOT NULL,
  publisher character varying(255) NOT NULL,
  published character varying(255) NOT NULL,
  license character varying(255),
  CONSTRAINT main_datasets_pkey PRIMARY KEY (md_id),
  CONSTRAINT main_datasets_created_by_fkey FOREIGN KEY (created_by)
      REFERENCES public.admins (username) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT main_datasets_ds_id_fkey FOREIGN KEY (ds_id)
      REFERENCES public.datastores (ds_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT main_datasets_endpoint_id_fkey FOREIGN KEY (endpoint_id)
      REFERENCES public.endpoints (endpoint_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)


-- EXAMPLE-DATA
INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 1, 1, 'n_schi16', 'Water gauges', 'Datasets about a mobile water gauge sensor network', 'Nicholas Schiestel', 'July 2016', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 1, 1, 'n_schi16', 'Plants', 'Dataset about plants', 'Nicholas Schiestel', 'June 2016', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 8, 2, 'n_schi16', 'EnviroCar', 'The EnviroCar Project', 'Institute for Geoinformatics', '2013-01-01', 'MIT');

INSERT INTO Main_Datasets (created, updated, ds_id, endpoint_id, created_by, md_name, md_description, publisher, published, license)
VALUES (now(), now(), 8, 3, 'test', 'EnviroCar', 'The EnviroCar Project', 'Institute for Geoinformatics', '2013-01-01', 'MIT');
```
