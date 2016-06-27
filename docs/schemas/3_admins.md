```sql
DROP TABLE IF EXISTS Admins CASCADE;
DROP TYPE IF EXISTS roles CASCADE;

-- ENUM
CREATE TYPE roles AS ENUM (
    'ADMIN',
    'GUEST'
);

-- SCHEMA
CREATE TABLE Admins (

    -- General
    username CHARACTER VARYING(255) NOT NULL UNIQUE,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    updated TIMESTAMP WITH TIME ZONE NOT NULL,

    -- Attributes
    email_address CHARACTER VARYING(255) NOT NULL,
    first_name CHARACTER VARYING(255) NOT NULL,
    last_name CHARACTER VARYING(255) NOT NULL,
    expires_on TIMESTAMP WITH TIME ZONE,

    -- Role
    role roles NOT NULL
);


-- EXAMPLE-DATA
INSERT INTO Admins (created, updated, username, role, email_address, first_name, last_name, expires_on)
VALUES (now(), now(), 'n_schi16', 'ADMIN', 'n.schiestel@uni-muenster.de', 'Nicho', 'S.', NULL);

INSERT INTO Admins (created, updated, username, role, email_address, first_name, last_name, expires_on)
VALUES (now(), now(), 'test', 'GUEST', 'testuser@example.org', 'Test', 'User', '2017-01-01');
```
