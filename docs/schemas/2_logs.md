```sql
DROP TABLE IF EXISTS Logs CASCADE;


-- SCHEMA
CREATE TABLE Logs (

    -- Attributes
	app_hash CHARACTER VARYING(255) NOT NULL REFERENCES Apps (app_hash) ON UPDATE CASCADE ON DELETE CASCADE,
    timestamp TIMESTAMP WITH TIME ZONE NOT NULL
);


-- EXAMPLE-DATA
INSERT INTO Logs (app_hash, timestamp)
VALUES ('abc123def456ghj789klm', '2016-06-20T07:25:32.112Z');

INSERT INTO Logs (app_hash, timestamp)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:43:01.212Z');

INSERT INTO Logs (app_hash, timestamp)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:44:10.002Z');

INSERT INTO Logs (app_hash, timestamp)
VALUES ('abc123def456ghj789klm', '2016-06-23T12:45:32.090Z');

INSERT INTO Logs (app_hash, timestamp)
VALUES ('abc123def456ghj789klm', '2016-06-24T15:12:45.321Z');
```
