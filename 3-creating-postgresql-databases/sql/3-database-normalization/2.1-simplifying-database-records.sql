-- Create the test_grade table
CREATE TABLE test_grade (
    -- Include a column for the student id
	  student_id INTEGER NOT NULL,
  
  	-- Include a column for the course name
    course_name VARCHAR(50) NOT NULL,
  
  	-- Add a column to capture a single test grade
    grade NUMERIC NOT NULL
);