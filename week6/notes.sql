-- three ways for importing csv files
-- copy products_raw from "C:\Users\436591\Downloads\products_raw.csv" Delimiter ',' -- needs admin perms
-- copy products_raw from "C:\Users\436591\Downloads\products_raw.csv" with format(CSV,header)

--basic arithmetic in queries
-- select price, stock, price*stock as inventory_value
-- from product_raw limit 5

-- select price+5 as increased_price
-- from product_raw limit 5

-- select sum(price+stock) as useless_data
-- from product_raw limit 5

-- select avg(price) as average_price from product_raw

-- select min(price), max(price)
-- from product_raw

-- select count(*)
-- from product_raw

-- select * from product_raw
-- where price > 500

-- select category, sum(stock) from product_raw
-- group by category 
-- having sum(stock)>50
