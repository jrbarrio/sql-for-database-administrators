-- Create a data scientist role
CREATE ROLE data_scientist;

-- Create a role for Marta
CREATE ROLE marta LOGIN;

-- Create an admin role
CREATE ROLE admin WITH CREATEDB CREATEROLE;