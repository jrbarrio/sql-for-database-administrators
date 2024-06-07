-- Create the project table
CREATE TABLE project (
	-- Unique identifier for projects
	id SERIAL PRIMARY KEY,
    -- Whether or not project is franchise opportunity
	is_franchise BOOLEAN DEFAULT FALSE,
	-- Franchise name if project is franchise opportunity
    franchise_name TEXT DEFAULT NULL,
    -- State where project will reside
    project_state TEXT,
    -- County in state where project will reside
    project_county TEXT,
    -- District number where project will reside
    congressional_district NUMERIC,
    -- Amount of jobs projected to be created
    jobs_supported NUMERIC
);