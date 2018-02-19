--ENUM
CREATE TYPE app_type AS ENUM(
  'WebApp',
  'MobileApp',
  'Service',
  'Guideline'
);

--SCHEMA
CREATE TABLE apps
(
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  app_name character varying(255) NOT NULL,
  app_hash character varying(255) NOT NULL,
  app_description character varying(255),
  url character varying(255),
  type app_type,
  email_address character varying(255) NOT NULL,
  first_name character varying(255) NOT NULL,
  last_name character varying(255) NOT NULL,
  CONSTRAINT apps_app_hash_key UNIQUE (app_hash),
  CONSTRAINT apps_app_name_key UNIQUE (app_name)
);

-- ENUM
CREATE TYPE roles AS ENUM (
    'ADMIN',
    'GUEST'
);

-- SCHEMA
CREATE TABLE admins
(
  username character varying(255) NOT NULL,
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  password character varying(255) NOT NULL,
  email_address character varying(255) NOT NULL,
  first_name character varying(255) NOT NULL,
  last_name character varying(255) NOT NULL,
  expires_on timestamp with time zone,
  role roles NOT NULL,
  CONSTRAINT admins_username_key UNIQUE (username)
);

-- ENUM
CREATE TYPE types AS ENUM (
    'REST',
    'POSTGRESQL',
    'MYSQL',
    'MONGODB',
    'COUCHDB',
    'PARLIAMENT',
    'CKAN',
    'VIRTUOSU'
);


-- SCHEMA
CREATE TABLE datastores
(
  ds_id SERIAL NOT NULL,
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  ds_description character varying(255),
  ds_host character varying(255),
  ds_port integer,
  db_instance character varying(255),
  db_user character varying(255),
  db_password character varying(255),
  ds_type types NOT NULL,
  CONSTRAINT datastores_pkey PRIMARY KEY (ds_id)
);


-- SCHEMA
CREATE TABLE endpoints
(
  endpoint_id SERIAL NOT NULL,
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  endpoint_host character varying(255) NOT NULL,
  endpoint_port integer NOT NULL DEFAULT 80,
  endpoint_path character varying(255) NOT NULL DEFAULT '/'::character varying,
  CONSTRAINT endpoints_pkey PRIMARY KEY (endpoint_id)
);

-- SCHEMA
CREATE TABLE categories
(
  category_id SERIAL NOT NULL,
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  category_name character varying(255) NOT NULL,
  CONSTRAINT categories_pkey PRIMARY KEY (category_id)
);


-- SCHEMA
CREATE TABLE main_datasets
(
  md_id SERIAL NOT NULL,
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
);


-- SCHEMA
CREATE TABLE categories_relationships
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
);

-- SCHEMA
CREATE TABLE sub_datasets
(
  sd_id SERIAL NOT NULL,
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  md_id integer,
  sd_name character varying(255) NOT NULL,
  sd_description character varying(255) NOT NULL,
  CONSTRAINT sub_datasets_pkey PRIMARY KEY (sd_id),
  CONSTRAINT sub_datasets_md_id_fkey FOREIGN KEY (md_id)
      REFERENCES public.main_datasets (md_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

-- SCHEMA
CREATE TABLE tags
(
  tag_id SERIAL NOT NULL,
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  sd_id integer NOT NULL,
  tag_name character varying(255) NOT NULL,
  CONSTRAINT tags_pkey PRIMARY KEY (tag_id),
  CONSTRAINT tags_sd_id_fkey FOREIGN KEY (sd_id)
      REFERENCES public.sub_datasets (sd_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

-- SCHEMA
CREATE TABLE queries
(
  query_id SERIAL NOT NULL,
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  sd_id integer NOT NULL,
  query_intern text,
  query_extern character varying(500),
  query_description character varying(500) NOT NULL,
  active boolean,
  CONSTRAINT queries_pkey PRIMARY KEY (query_id),
  CONSTRAINT queries_sd_id_fkey FOREIGN KEY (sd_id)
      REFERENCES public.sub_datasets (sd_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

-- SCHEMA
CREATE TABLE parameters
(
  parameter_id SERIAL NOT NULL,
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  query_id integer,
  parameter_value character varying(255),
  CONSTRAINT parameters_pkey PRIMARY KEY (parameter_id),
  CONSTRAINT parameters_query_id_fkey FOREIGN KEY (query_id)
      REFERENCES public.queries (query_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

-- SCHEMA
CREATE TABLE visitors
(
  id SERIAL NOT NULL,
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
);

--SCHEMA
CREATE TABLE logs_count
(
count SERIAL NOT NULL,
app_hash character varying(255),
category_id integer,
type character varying(255),
day timestamp,
sd_id integer
);

-- SCHEMA
CREATE TABLE logs
(
  app_hash character varying(255) NOT NULL,
  "timestamp" timestamp with time zone NOT NULL,
  category_id integer,
  sd_id integer,
  location_id integer,
  CONSTRAINT logs_app_hash_fkey FOREIGN KEY (app_hash)
      REFERENCES public.apps (app_hash) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT logs_category_id_fkey FOREIGN KEY (category_id)
      REFERENCES public.categories (category_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT logs_sd_id_fkey FOREIGN KEY (sd_id)
      REFERENCES public.sub_datasets (sd_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT logs_location_id_fkey FOREIGN KEY (location_id)
    REFERENCES public.visitors (id)
    ON UPDATE CASCADE ON DELETE CASCADE
);

