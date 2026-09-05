-- Week 3 Homework

-- Charlotte Beeman

-- SQL Segment

-- Setting up the database and table

--CREATE DATABASE week3_homework;
--CREATE TABLE deadlock_heroes(hero_name varchar(15), hero_role varchar(20), win_percent numeric, pick_rate numeric, ban_rate numeric);

-- Insert data into the table above

--INSERT INTO deadlock_heroes(hero_name, hero_role, win_percent, pick_rate, ban_rate)
--VALUES ('Ivy', 'Roamer/Disrupt', 53.9, 34.2, 4.0), 
--('Apollo', 'Frontline DPS', 51.4, 21.3, 12.6), 
--('Mirage', 'Spirit Nuker', 43.4, 14.7, 3.0), 
--('Victor', 'Tank/DPS', 56.0, 33.3, 11.4),
--('Dynamo', 'Support', 51.7, 32.2, 8.9),
--('Vyper', 'Frontline DPS', 53.0, 18.1, 7.8),
--('The Doorman', 'Disrupt', 46.8, 17.7, 23.0);

-- Select Queries

-- Select all from the table

--SELECT * FROM deadlock_heroes
--ORDER BY win_percent DESC;

-- Select specific catagories from the table

--SELECT hero_name, win_percent, ban_rate FROM deadlock_heroes;

-- Select distinctive roles from the table

--SELECT DISTINCT hero_role from deadlock_heroes;

-- Select heros with a pick rate higher than 30%

--SELECT hero_name, win_percent, ban_rate FROM deadlock_heroes
--WHERE pick_rate > 30;

-- Select heros with a win rate lower than 50% or a pick rate higher than 30%

--SELECT hero_name, pick_rate, ban_rate FROM deadlock_heroes
--WHERE win_percent < 50 OR pick_rate > 30;

-- Find unique hero roles and order them by win percentage

--SELECT DISTINCT hero_role, win_percent FROM deadlock_heroes
--ORDER BY win_percent DESC;

-- Select all with a ban rate higher than 10%, then order by role

--SELECT * FROM deadlock_heroes
--WHERE ban_rate > 10
--ORDER BY hero_role


-- Week 3 Skim

-- New concept:
-- The introduction of other datatypes for text that aren't varchar()

-- Question:
-- How would I properly input a percentage without using numeric or decimal so it properly displays and would display an error for any value above 100%?
