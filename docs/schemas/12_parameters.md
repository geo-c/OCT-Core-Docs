```sql
DROP TABLE IF EXISTS Parameters CASCADE;


-- SCHEMA
CREATE TABLE public.parameters
(
  parameter_id integer NOT NULL DEFAULT nextval('parameters_parameter_id_seq'::regclass),
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  query_id integer,
  parameter_value character varying(255),
  CONSTRAINT parameters_pkey PRIMARY KEY (parameter_id),
  CONSTRAINT parameters_query_id_fkey FOREIGN KEY (query_id)
      REFERENCES public.queries (query_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)

-- EXAMPLE-DATA
INSERT INTO Parameters (created, updated, query_id, parameter_value)
VALUES (now(), now(), 5, '1');
```
