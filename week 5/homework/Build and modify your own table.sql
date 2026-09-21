-- Creation of table and database
-- CREATE DATABASE Week5Homework;
-- CREATE TABLE PowerGeneration(integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY, source_of_power text, renewable boolean, first_created date);

-- inserting data into the table
-- insert into powergeneration(source_of_power, renewable, first_created)
-- values ('Solar', TRUE,'1954-04-25'), ('coal', FALSE, '1882-12-01'), ('wind', TRUE, '1887-7-31'), ('Hydro', TRUE, '1882-9-30'), ('Nuclear', FALSE, '1951-12-20');

-- Adding columns to table
-- ALTER TABLE powergeneration
-- ADD COLUMN percent_of_total_power numeric,
-- ADD COLUMN total_plants numeric,
-- ADD COLUMN harmful_to_environment boolean,
-- ADD COLUMN when_researched timestamp

-- Updating columns

-- UPDATE powergeneration
-- SET when_researched = now()

-- update powergeneration
-- set harmful_to_environment = FALSE
-- where source_of_power = 'Nuclear' or source_of_power = 'Solar'

-- update powergeneration
-- set total_plants = 3000
-- where source_of_power = 'coal'

-- Updating a column name

-- ALTER TABLE powergeneration
-- RENAME COLUMN percent_of_total_power TO gigawatts_produced

-- SELECT queries

-- select *
-- from powergeneration

-- select source_of_power, renewable
-- from powergeneration

-- select source_of_power, renewable
-- from powergeneration
-- where renewable = false

-- select source_of_power, renewable
-- from powergeneration
-- where renewable = true
-- order by id

-- select source_of_power, renewable
-- from powergeneration
-- where harmful_to_environment = false

-- Two concepts of note were the copy command and the mathematic functions
-- What happens if i subtract a string/non-number from a number

-- Which new data type did you find the most useful?
-- Booleans
-- Why did you choose the data types you used?
-- one for names, 2 for yes or no questions and the rest were for how much of something there was, along with the date first produced
-- What is the difference between ALTER TABLE and UPDATE?
-- alter table changes the table itself, where update changes content within
