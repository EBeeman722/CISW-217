-- CREATE DATABASE Week10
-- create table products_raw(Index integer PRIMARY KEY, Name text, Description text, Brand text, Category text, Price numeric(10,2), Currency char(3), Stock integer, EAN numeric, Color text, Size text, Availability text, Internal_ID integer)
-- (imported using GUI)

-- select avg(ceil(price)) from products_raw
-- group by category

-- select max(ceil(price)),min(ceil(price)) from products_raw

-- select floor(price) from products_raw

-- select upper(category) from products_raw

-- create view category_overview as
-- select sum(stock), round(avg(price),2) as average_price from products_raw
-- group by category
-- having avg(price) > 50

-- select * from category_overview
