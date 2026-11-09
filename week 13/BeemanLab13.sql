-- inserting data based on instructions provided in the assignment
CREATE DATABASE week13_game_store;

CREATE TABLE publishers (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL
);

CREATE TABLE games (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    publisher_id INTEGER REFERENCES publishers(id),
    price NUMERIC(6,2)
);

CREATE TABLE sales (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    game_id INTEGER REFERENCES games(id),
    quantity INTEGER NOT NULL,
    sale_date DATE NOT NULL
);

INSERT INTO publishers (publisher_name)
VALUES
    ('Nintendo'),
    ('Electronic Arts'),
    ('Ubisoft'),
    ('Capcom');

INSERT INTO games (title, publisher_id, price)
VALUES
    ('Mario Kart 8 Deluxe', 1, 59.99),
    ('Super Smash Bros Ultimate', 1, 59.99),
    ('EA Sports FC 25', 2, 69.99),
    ('Assassins Creed Mirage', 3, 49.99),
    ('Street Fighter 6', 4, 59.99),
    ('Resident Evil 4', 4, 39.99),
    ('Indie Adventure', NULL, 19.99),
    ('Upcoming Racing Game', 2, 49.99);

INSERT INTO sales (game_id, quantity, sale_date)
VALUES
    (1, 5, '2025-10-01'),
    (1, 3, '2025-10-05'),
    (2, 4, '2025-10-03'),
    (3, 2, '2025-10-07'),
    (4, 3, '2025-10-09'),
    (5, 6, '2025-10-10'),
    (5, 2, '2025-10-12'),
    (6, 1, '2025-10-15');

-- select only game title, price and publisher using inner join, sort by title and disclude any games without a publisher on the list
select g.title, g.price, p.publisher_name from games as g
inner join publishers as p 
on g.publisher_id = p.id
where publisher_name is not NULL
order by title asc

-- Question: Does Indie Adventure appear in your results? Why or why not?
-- Because it was assigned NULL as the publisher

select g.title, g.price, p.publisher_name from games as g
left join publishers as p 
on g.publisher_id = p.id
order by title asc

-- Question: How many games appear in your results compared to Part 2?
-- One more appeared, the one without a publisher, making a total of 8 games

SELECT
    g.title,
    COUNT(s.id) AS total_sales,
	sum(s.quantity) as sold_copies
FROM games g
INNER JOIN sales s
    ON g.id = s.game_id
group by g.id, g.title
order by sold_copies desc;

-- Question: Which game has sold the most copies?
-- Street Fighter 6 and Mario Kart 8 Deluxe

SELECT
    p.publisher_name,
    COUNT(g.id) AS game_count,
	ROUND(avg(g.price),2) as average_price
FROM publishers p
INNER JOIN games g
    ON p.id = g.publisher_id
GROUP BY p.id, p.publisher_name
order by average_price desc;

-- Question: Which publisher has the highest average game price?
-- EA and Nintendo, both hitting an average of 59.99
