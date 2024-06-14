-- Create the place table
CREATE TABLE place (
  -- Define zip_code column
  zip_code CHAR(5) PRIMARY KEY,
  -- Define city column
  city VARCHAR(50) NOT NULL,
  -- Define state column
  state CHAR(2) NOT NULL
);

CREATE TABLE borrower (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  approved BOOLEAN DEFAULT NULL,  
  -- Add column referencing place table
  place_id CHAR(5) REFERENCES place(zip_code)
);