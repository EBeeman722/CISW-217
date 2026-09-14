-- Creation of the database and table
--CREATE DATABASE Week_5
--CREATE TABLE products (
--    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--    product_name varchar(100),
--    quantity integer
--);

-- Inserting 4 products into the table
-- INSERT INTO products (product_name, quantity)
-- VALUES ('blue paint', 20), ('steam gift card', 5), ('1kg white filament', 8), ('butter', 1);

-- verifying all is there
-- SELECT *
-- FROM products;

-- Adding additional columns

-- alter table products
-- add column description text,
-- add column price numeric(6,2),
-- add column rating real,
-- add column last_updated timestamp with time zone,
-- add column in_stock boolean;

-- Verification
-- SELECT *
-- FROM products;

-- updating previous columns with new information

-- update products
-- set description = 'Paint tinted blue',
-- price = 5.99,
-- rating = 3.5,
-- last_updated = now(),
-- in_stock = TRUE
-- WHERE product_name = 'blue paint'

-- update products
-- set description = 'Sticks of butter, sold in 4 packs',
-- price = 6.99,
-- rating = 4.1,
-- last_updated = now(),
-- in_stock = FALSE
-- WHERE product_name = 'butter'

-- update products
-- set description = 'a gift card for your steam digital wallet',
-- price = 20,
-- rating = 3.9,
-- last_updated = now(),
-- in_stock = TRUE
-- WHERE product_name = 'steam gift card'

-- update products
-- set description = 'white filament for a 3d printer',
-- price = 13.99,
-- rating = 2.9,
-- last_updated = now(),
-- in_stock = TRUE
-- WHERE product_name = '1kg white filament'

-- testing numeric behavior

-- update products
-- set price = 13.996
-- WHERE product_name = '1kg white filament'

-- SELECT product_name, price
-- FROM products;

-- the price had rounded up to the next nearest digit



-- FINAL QUERIES

-- SELECT *
-- FROM products;

-- SELECT product_name, price, rating
-- FROM products;

-- SELECT product_name, price, rating
-- FROM products
-- WHERE price > 8

-- SELECT product_name, price, rating
-- FROM products
-- WHERE in_stock = TRUE

-- SELECT product_name, price, rating
-- FROM products
-- ORDER BY price desc
