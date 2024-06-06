-- Create a table named 'bank' in the 'loan_504' schema
CREATE TABLE loan_504.bank (
    id serial PRIMARY KEY,
    name VARCHAR (100) NOT NULL
);

-- Create a table named 'bank' in the 'loan_7a' schema
CREATE TABLE loan_7a.bank (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
  	express_provider BOOLEAN
);

-- Create a table named 'borrower' in the 'loan_504' schema
CREATE TABLE loan_504.borrower (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR (100) NOT NULL
);

