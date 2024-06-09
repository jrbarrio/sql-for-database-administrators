-- Create the client table
CREATE TABLE client (
	-- Unique identifier column
	id SERIAL PRIMARY KEY,
    -- Name of the company
    name VARCHAR(50),
	-- Specify a text data type for variable length urls
	site_url VARCHAR(50),
    -- Number of employees (max of 1500 for small business)
    num_employees SMALLINT,
    -- Number of customers
    num_customers INTEGER
);