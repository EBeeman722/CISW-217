-- rounding functions
-- round(): round a number to x decimal
-- ceil() & floor(): round up or round down

-- text funcs
-- upper(): converts text to uppercase
-- lower(): converts text to lowercase
-- length(): how many characters in listed text

-- date functions
-- now(): returns current timestamp
-- current_date: returns todays date
-- age(): returns the difference between two dates (newer date, older date)

-- views
-- shortcuts for repetitive select statements
-- create view product_summary as 
-- select category, round(avg(price),2) as avg_price,
-- sum(stock) as total stock
-- from products
-- group by category
-- then select * from product_summary
-- to edit it, use replace in place of create above
