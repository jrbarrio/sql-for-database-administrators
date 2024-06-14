-- Create the contact table
CREATE TABLE contact (
  	-- Define the id primary key column
	id SERIAL PRIMARY KEY,
  	-- Define the name column
  	name VARCHAR(50) NOT NULL,
    -- Define the email column
  	email VARCHAR(50) NOT NULL
);

-- Add contact_id to the client table
ALTER TABLE client ADD contact_id INTEGER NOT NULL;

-- Add a FOREIGN KEY constraint to the client table
ALTER TABLE client ADD CONSTRAINT fk_c_id FOREIGN KEY (contact_id) REFERENCES contact(id);