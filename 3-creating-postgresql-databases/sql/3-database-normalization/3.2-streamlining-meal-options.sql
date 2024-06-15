CREATE TABLE ingredient (
  -- Add PRIMARY KEY for table
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE meal (
    -- Make id a PRIMARY KEY
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  avg_student_rating NUMERIC,
  total_calories SMALLINT NOT NULL
);

CREATE TABLE meal_date (
  -- Define a column referencing the meal table
  meal_id INTEGER REFERENCES meal(id),
  date_served DATE NOT NULL
);

CREATE TABLE meal_ingredient (
  meal_id INTEGER REFERENCES meal(id),

  -- Define a column referencing the ingredient table
  ingredient_id INTEGER REFERENCES ingredient(id)
);