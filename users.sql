--
-- Schema for Users Database for Social Distancing Record
-- It's a pretty simple layout so far; nothing fancy.
--



create table IF NOT EXISTS users(
id integer NOT NULL,
firstname TEXT,
email  TEXT,
zipcode TEXT CHECK (zipcode NOT LIKE '%[^0-9]%') CHECK (length(zipcode) == 5),
latitude REAL NOT NULL,
longitude REAL NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (zipcode) REFERENCES zipcodes(zipcode)
);
