
-- -- Create a table that stores information about video games
-- CREATE TABLE games (
--     -- Automatically generates a unique ID for each game
--     game_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

--     -- Stores the name of the game
--     title varchar(100) NOT NULL,

--     -- Stores the genre of the game
--     genre varchar(50),

--     -- Stores the price with 2 decimal places
--     price numeric(6,2)
-- );


-- -- Add three games to the games table
-- INSERT INTO games (title, genre, price)
-- VALUES
--     ('Elden Ring', 'RPG', 59.99),
--     ('Minecraft', 'Sandbox', 29.99),
--     ('Helldivers 2', 'Shooter', 39.99);
-- -- Create a second table that stores game reviews
-- CREATE TABLE reviews (
--     -- Automatically generates a unique ID for each review
--     review_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

--     -- Connects each review to a game in the games table
--     game_id integer REFERENCES games(game_id),

--     -- Stores the review score
--     score integer
-- );
-- -- Add reviews and connect them to games using game_id
-- INSERT INTO reviews (game_id, score)
-- VALUES
--     (1, 10), -- Elden Ring
--     (2, 9),  -- Minecraft
--     (1, 8);  -- Elden Ring

-- the game_id connects the two tables
-- foreign key is just a PK from another table
-- pk uniquely identifies a row

--joins show the output of two tables as one table

-- select * from reviews doesn't show game's names

-- Inner JOIN gives rows that match in both tables
-- select games.title, reviews.score -- tablename.columnname
-- from games -- first table
-- inner join reviews -- second table
-- on games.game_id = reviews.game_id -- shows how to conect the table

-- left join keeps everthing from the left table
-- select games.title, reviews.score
-- from games --left table
-- left join reviews
-- on games.game_id = review.game_id

-- right join keeps everything from the right table

--table aliases can replace full table names
-- select g.title, r.score
-- from games as g
-- inner join reviews as r
-- on g.game_id = r.game_id
