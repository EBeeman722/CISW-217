-- created the database
CREATE DATABASE week3_select;

-- copied from assignment, makes the table
CREATE TABLE games (
    id integer GENERATED ALWAYS AS IDENTITY,
    title varchar(100),
    genre varchar(50),
    platform varchar(50),
    release_year integer,
    rating numeric(3,1)
);
INSERT INTO games (title, genre, platform, release_year, rating)
VALUES
    ('Elden Ring', 'RPG', 'PC', 2022, 9.5),
    ('Rocket League', 'Sports', 'PC', 2015, 8.5),
    ('Super Smash Bros. Ultimate', 'Fighting', 'Switch', 2018, 9.0),
    ('Minecraft', 'Sandbox', 'PC', 2011, 9.2),
    ('Mario Kart 8 Deluxe', 'Racing', 'Switch', 2017, 8.8),
    ('Marvel Rivals', 'Shooter', 'PC', 2024, 8.0),
    ('Stardew Valley', 'Simulation', 'PC', 2016, 9.1),
    ('The Legend of Zelda: Tears of the Kingdom', 'Adventure', 'Switch', 2023, 9.4);
SELECT *
FROM games;

-- task 1
--select * from games;

-- task 2
--select title, platform, rating
--from games

-- task 3
--select genre, title, release_year
--from games

-- task 4
--select title, rating
--from games
--order by rating asc

-- task 5
--select title, release_year
--from games
--order by release_year ASC

-- task 6
--select platform, title, rating
--from games
--order by platform asc, rating desc

-- task 7
--select distinct platform
--from games

-- task 8
--select distinct platform, genre
--from games

-- task 9
--select title, platform, release_year
--from games
--where platform = 'Switch'

-- task 10
--select title, genre, rating
--from games
--where rating > 9.0

-- task 11
--select title, release_year
--from games
--where release_year < 2020
--order by release_year desc

-- task 12
--select title, rating
--from games
--where rating between 8.5 and 9.2

-- task 13
--select title, genre
--from games
--where title like 'M%'

-- task 14
--select title, genre
--from games
--where title ilike '%the%'

-- task 15
--select title, genre
--from games
--where title ilike '%i%'

-- task 16
--select title, platform, rating
--from games
--where platform = 'PC' and rating > 9.0

-- task 17
--select title, genre
--from games
--where genre = 'RPG' or genre = 'Fighting' 

-- task 18
--select title, platform, release_year
--from games
--where platform = 'PC' and (release_year > 2022 or release_year < 2017) 

-- task 19
--select title, genre,  platform, rating
--from games
--where rating >= 8.8
--order by platform asc, rating desc

-- task 20
-- I want to find a highly rated rpg from the dataset
--select title, platform, rating
--from games
--where rating > 7.8 and genre = 'RPG'
--order by release_year desc
