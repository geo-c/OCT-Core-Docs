```sql
DROP TABLE IF EXISTS Logs CASCADE;


-- SCHEMA
CREATE TABLE public.logs
(
  app_hash character varying(255) NOT NULL,
  "timestamp" timestamp with time zone NOT NULL,
  category_id integer,
  sd_id integer,
  CONSTRAINT logs_app_hash_fkey FOREIGN KEY (app_hash)
      REFERENCES public.apps (app_hash) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT logs_category_id_fkey FOREIGN KEY (category_id)
      REFERENCES public.categories (category_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT logs_sd_id_fkey FOREIGN KEY (sd_id)
      REFERENCES public.sub_datasets (sd_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)


-- EXAMPLE-DATA
INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-20T07:25:32.112Z', 1);

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:43:01.212Z', 1);

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:44:10.002Z', 1);

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:45:32.090Z', 2);

INSERT INTO Logs (app_hash, timestamp, category_id)
VALUES ('abc123def456ghj789klm', '2016-06-24T15:12:45.321Z', 2);
```
