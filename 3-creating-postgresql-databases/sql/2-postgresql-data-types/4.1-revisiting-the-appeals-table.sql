CREATE TABLE appeal (
	id SERIAL PRIMARY KEY,
    content TEXT NOT NULL,
  	-- Add received_on column
    received_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  	
  	-- Add approved_on_appeal column
  	approved_on_appeal BOOLEAN DEFAULT NULL,
  	
  	-- Add reviewed column
    reviewed DATE
);