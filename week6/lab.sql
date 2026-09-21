-- creation and verification of the import

--create table product(index numeric PRIMARY KEY, product_name text, description text, brand text, category varchar(100), price numeric(10,2), currency char(3), stock integer,
--ean numeric, color text, size text, availability text, internal_ID integer)

--SELECT * FROM public.product
--ORDER BY index ASC 

--Queries

-- multiplying two columns
--select price*stock as inventory_value from product 

-- averaging
-- select avg(price) as average_price from product

-- selecting min and max
-- select min(price), max(price) from product

-- counting how many items are in the table
-- select count(*) from product
