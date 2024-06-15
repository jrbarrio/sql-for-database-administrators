-- Complete the definition of the table for zip codes
CREATE TABLE zip (
	code INTEGER PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL
);

-- Complete the definition of the "zip_code" column
CREATE TABLE school (
	id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    zip_code INTEGER REFERENCES zip(code)
);