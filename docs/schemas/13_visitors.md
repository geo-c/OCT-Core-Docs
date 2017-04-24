```sql
DROP TABLE IF EXISTS Visitors CASCADE;


-- SCHEMA
CREATE TABLE public.visitors
(
  id integer NOT NULL DEFAULT nextval('visitors_id_seq'::regclass),
  date timestamp with time zone NOT NULL,
  country_code character varying(255),
  country_name character varying(255),
  latitude character varying(255),
  longitude character varying(255),
  metro_code character varying(255),
  region_code character varying(255),
  region_name character varying(255),
  time_zone character varying(255),
  zip_code character varying(255),



  CONSTRAINT visitors_pkey PRIMARY KEY (id)
)

```