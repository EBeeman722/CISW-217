-- copied file in using GUI, not sql


-- select queries using math
--finding total inventory value
--SELECT sum(price*stock) as inventory_price from products

-- finding the average inventory cost per category
--SELECT category, avg(price) from products
--group by category

-- listing all products that cost more than 500
--select * from products
--where price > 500

-- counting from a specific category
--select count(*) from products 
--where category = 'Cycling'

-- ordering by price, least to most expensive
--select * from products
--order by price asc


-- Chapter 7 skimming
-- One thing I noticed was using null to find missing entities in a table.
-- One question I still have is how do "many-to-many" relationships work?
