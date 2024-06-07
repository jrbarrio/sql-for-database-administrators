-- Define the business_type table below
CREATE TABLE business_type (
	id serial PRIMARY KEY,
  	description TEXT NOT NULL
);

-- Define the applicant table below
CREATE TABLE applicant (
	id serial PRIMARY KEY,
  	name TEXT NOT NULL,
  	zip_code CHAR(5) NOT NULL,
  	business_type_id INTEGER references business_type(id)
);