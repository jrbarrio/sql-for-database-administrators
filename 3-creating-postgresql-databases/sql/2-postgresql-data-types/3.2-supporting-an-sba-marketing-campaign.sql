-- Create the campaign table
CREATE TABLE campaign (
  -- Unique identifier column
  id SERIAL PRIMARY KEY,
  -- Campaign name column
  name VARCHAR(50),
  -- The campaign's budget
  budget NUMERIC(7, 2),
  -- The duration of campaign in days
  num_days SMALLINT DEFAULT 30,
  -- The number of new applications desired
  goal_amount INTEGER DEFAULT 100,
  -- The number of received applications
  num_applications INTEGER DEFAULT 0
);