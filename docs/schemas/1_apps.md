```sql
DROP TABLE IF EXISTS Apps CASCADE;
DROP TABLE IF EXISTS Logs CASCADE;


-- SCHEMA
CREATE TABLE public.apps
(
  created timestamp with time zone NOT NULL,
  updated timestamp with time zone NOT NULL,
  app_name character varying(255) NOT NULL,
  app_hash character varying(255) NOT NULL,
  app_description character varying(255),
  email_address character varying(255) NOT NULL,
  first_name character varying(255) NOT NULL,
  last_name character varying(255) NOT NULL,
  CONSTRAINT apps_app_hash_key UNIQUE (app_hash),
  CONSTRAINT apps_app_name_key UNIQUE (app_name)
)


-- EXAMPLE-DATA
INSERT INTO Apps (created, updated, app_name, app_hash, app_description, email_address, first_name, last_name)
VALUES (now(), now(), 'test', 'abc123def456ghj789klm', 'test app', 'max@mustermann.com', 'Max', 'Mustermann');
```
