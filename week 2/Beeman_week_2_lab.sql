-- Table Creation
create table animals(animal_id integer primary key,species_id integer, animal_name varchar(100), age integer);

create table animal_types(animal_id integer, species varchar(50), habitat varchar(50), diet varchar(100));

-- Inserting into tables
insert into animal_types(animal_id, species, habitat, diet)
values (1, 'pygmy_rabbit', 'sagebrush/dry climates', 'sage and grass'),
(2, 'wolf','tundra','meat'),
(3, 'fox','arctic','meat');

insert into animals(animal_id,species_id, animal_name, age)
values (1, 1, 'Jorge', 1.5),
(2, 2,'Justin', 5),
(3, 3,'Jambalaya', 4);

-- Error Experimentation
-- ERROR:  syntax error at or near "animal_name"
-- LINE 1: insert into animals(animal_idspecies_id animal_name age)
