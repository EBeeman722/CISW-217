-- Part A
-- shows how many records are in the table
select count(*) from product

-- How many records are in your table?
-- 10k

-- Why might the number of records affect query performance?
-- more information to sift through may result in longer load times due to it not all being stored in memory

-- Part B
-- shows how it got the result
-- explain analyze
-- select * from product
-- where category = 'Skincare'

-- Did PostgreSQL use a sequential scan (Seq Scan)?
-- Yes
  
-- How many records were returned?
-- 237
  
-- What was the execution time?
-- 1.148 ms

-- Part C
-- create index on product(category)
-- explain analyze
-- select * from product
-- where category = 'Skincare'

-- Did PostgreSQL use an Index Scan, Bitmap Index Scan, or continue using a Seq Scan?
-- It used a bitmap heap scan
  
-- Was the execution time faster or slower?
-- execution time was faster, .206 ms
  
-- Why might PostgreSQL choose not to use an index even when one exists?
-- if it finds another method to be faster

Part D
