-- create database week11
-- create table products_big(Index integer PRIMARY KEY, Name text, Description text, Brand text, Category text, Price numeric(10,2), Currency text, Stock integer, EAN numeric, Color text, Size text, Availability text, Internal_id integer)

-- SELECT COUNT(*) FROM products_big 
-- SELECT * FROM products_big LIMIT 5

-- EXPLAIN ANALYZE SELECT * FROM products_big WHERE category = 'Skincare'
-- "Seq Scan on products_raw  (cost=0.00..3634.00 rows=2983 width=151) (actual time=0.021..33.799 rows=3019.00 loops=1)"
-- "Filter: (category = 'Skincare'::text)"
-- "Rows Removed by Filter: 96981"
-- "Buffers: shared hit=2307 read=77"
-- "Planning Time: 0.096 ms"
-- "Execution Time: 34.000 ms"

-- create index idx_big_category on products_big(category)
-- EXPLAIN ANALYZE SELECT * FROM products_big WHERE category = 'Skincare';
-- "Bitmap Heap Scan on products_big  (cost=35.41..2582.98 rows=2983 width=151) (actual time=0.858..3.600 rows=3019.00 loops=1)"
-- "  Recheck Cond: (category = 'Skincare'::text)"
-- "  Heap Blocks: exact=1726"
-- "  Buffers: shared hit=1726 read=5"
-- "  ->  Bitmap Index Scan on idx_big_category  (cost=0.00..34.66 rows=2983 width=0) (actual time=0.547..0.548 rows=3019.00 loops=1)"
-- "        Index Cond: (category = 'Skincare'::text)"
-- "        Index Searches: 1"
-- "        Buffers: shared read=5"
-- "Planning:"
-- "  Buffers: shared hit=16 read=1"
-- "Planning Time: 3.714 ms"
-- "Execution Time: 3.833 ms"

-- create index idx_big_cat_price on products_raw(category,price)

-- When using index scans, the result is far faster, as it has already marked itself into a sorted category. Postgres chose an index when it was deemed faster, so when sorting by category in this instance. The larger table made it prefer the index search over the seq scan.

-- one-to-one
-- will only find one type of match between tables

-- one to many
-- one side holds one key value while the other side may have many that correspond to the other side's values

-- many to many
-- multiple items can connect to multiple items in another table
