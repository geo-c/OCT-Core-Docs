```sql
DROP TABLE IF EXISTS Admins CASCADE;
DROP TYPE IF EXISTS roles CASCADE;

-- ENUM
CREATE TYPE roles AS ENUM (
    'ADMIN',
    'GUEST'
);

-- SCHEMA
CREATE TABLE public.admins
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
)


-- EXAMPLE-DATA
INSERT INTO Admins (created, updated, username, role, password, email_address, first_name, last_name, expires_on)
VALUES (now(), now(), 'n_schi16', 'ADMIN', 'abc123', 'n.schiestel@uni-muenster.de', 'Nicho', 'S.', NULL);

INSERT INTO Admins (created, updated, username, role, password, email_address, first_name, last_name, expires_on)
VALUES (now(), now(), 'test', 'GUEST', 'xyz789', 'testuser@example.org', 'Test', 'User', '2017-01-01');
```
