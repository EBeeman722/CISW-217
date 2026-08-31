-- select statement is used to retrieve data from a table
--select * from teachers;
-- the * means to show all columns from the table

-- if you want to show only certain columns:
--select first_name, school, hire_date
-- select these columns
--from teachers
-- from this table

-- to order from something, postgres will order in ascending by default (desc for decending, asc for ascending)
-- it will order alphabetically, numerically or oldest to newest
--order by salary;

-- ordering by multiple columns, one asc and one desc
--order by school asc, hire_date desc;

-- distinct will only show unique values
-- removes repeat values and helps with data retrieval
--select distinct school
--from teachers

-- where selects using a specific condition
--select last_name, first_name, school
--from teachers
--where school = 'Myers Middle School'

-- comparison operators
-- =, <, >, <> or !=, >=, <=, between, in (for multiple exacts), like and ilike (match a pattern), not
-- like is case sensitive, ilike is not (postgre only)

-- above concept with dates
-- select first_name, hire_date
-- from teachers
-- where hire_date < '2010-01-01'

-- above concept with between
--select first_name, salary
--from teachers
--where salary between 40000 and 60000

-- Using multiple conditions
-- select * from teachers
-- where school = 'Myers Middle School' or  salary < 40000 
-- And to specify multiple needed, or for multiple choices 

-- need parenthesis with and/or
select *
from teachers
where school = 'F.D. Roosevelt HS'
And (salary < 38000 or last_name = 'cole')