-- Part A
-- shows how many records are in the table
-- select count(*) from product

-- Part B
-- shows how it got the result
-- explain analyze
-- select * from product
-- where category = 'Skincare'

-- Part C
-- create index on product(category)
-- explain analyze
-- select * from product
-- where category = 'Skincare'

-- Part D
-- set enable_seqscan = off;
-- explain analyze
-- select * from product
-- where category = 'Skincare'

-- set enable_seqscan = on;
