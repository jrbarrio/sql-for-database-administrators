-- Create the appeal table
CREATE TABLE appeal (
    -- Specify the unique identifier column
	id SERIAL PRIMARY KEY,
    -- Define a column for holding the text of the appeals
    content TEXT NOT NULL
);