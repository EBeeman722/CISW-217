-- create index idx_category on product(category)
-- creates essentially a bookmark for the table
-- indexes are better suited for larger tables

-- explain analyze
-- select * from product
-- where category = 'Skincare'
-- explain analyze shows how the system's process to get there
-- seq scan shows it is searching the entire table
-- index scan shows it is


-- set enable_seqscan = off;
-- explain analyze
-- select * from product
-- where category = 'Skincare'
-- will force a bitmap scan instead of a seq scan
-- sql will choose the fastest route by default
