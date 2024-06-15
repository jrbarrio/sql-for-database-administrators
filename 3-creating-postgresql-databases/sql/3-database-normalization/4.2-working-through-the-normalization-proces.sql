-- Add columns to the borrower table
ALTER TABLE borrower
ADD COLUMN first_name VARCHAR (50) NOT NULL,
ADD COLUMN last_name VARCHAR (50) NOT NULL;

-- Remove column from borrower table to satisfy 1NF
ALTER TABLE borrower
DROP COLUMN full_name;

-- Add a new column called 'zip' to the 'bank' table 
ALTER TABLE bank
ADD COLUMN zip VARCHAR(10) NOT NULL;

-- Remove a corresponding column from 'loan' to satisfy 2NF
ALTER TABLE loan
DROP COLUMN bank_zip;

-- Define 'program' table with max amount for each program
CREATE TABLE program (
  	id serial PRIMARY KEY,
  	description text NOT NULL,
  	max_amount DECIMAL(9,2) NOT NULL
);

-- Alter the 'loan' table to satisfy 3NF
ALTER TABLE loan
ADD COLUMN program_id INTEGER REFERENCES program (id), 
DROP COLUMN program,
DROP COLUMN max_amount;