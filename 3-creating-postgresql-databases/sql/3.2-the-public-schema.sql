-- Add users table to the public schema for the pod database
CREATE TABLE users (
  id serial PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL,
  hashed_password CHAR(72) NOT NULL
);