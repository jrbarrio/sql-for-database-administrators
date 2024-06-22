-- Create the new analysis schema
CREATE SCHEMA analysis;

-- Create a table unapproved loan under the analysis schema
CREATE TABLE analysis.unapproved_loan (
    id serial PRIMARY KEY,
    loan_id INTEGER REFERENCES loan(id),
    description TEXT NOT NULL
);

-- Create 'data_scientist' user with password 'changeme'
CREATE USER data_scientist WITH PASSWORD 'changeme';

-- Give 'data_scientist' ability to use 'analysis' schema
GRANT USAGE ON SCHEMA analysis TO data_scientist;

-- Grant read-only access to table for 'data_scientist' user
GRANT SELECT ON analysis.unapproved_loan TO data_scientist;