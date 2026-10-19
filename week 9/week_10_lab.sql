-- -- select using upper or lower
-- select upper(category), description from products
-- order by category desc
  
-- -- select using rounding
-- select round(price,1) from products

-- -- select using now() or current date
-- select now() as time_of_query

-- -- create a view within assignment's parameters
-- create view products_above_200 as
-- select upper("Name"), lower(description), price
-- from products
-- where price > 200
-- order by price desc

-- -- select using the view
-- select * from products_above_200
