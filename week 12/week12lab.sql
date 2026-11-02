-- create table deadlock_heroes(character_name text PRIMARY KEY, base_regen numeric(10,2),base_spirit numeric(10,2))
-- create table deadlock_abilities(ability_name text primary key, ability_slot integer, character_name text, foreign key(character_name) references deadlock_heroes(character_name))

-- insert into deadlock_heroes(character_name, base_regen, base_spirit)
-- values('Apollo', 1, 0), ('Abrams', 5, 0), ('Pocket', 1, 0)

-- insert into deadlock_abilities(ability_name, ability_slot, character_name)
-- values('Flawless Advance', 3, 'Apollo'), ('Shoulder Charge', 2 , 'Abrams'), ('Disengaging Sigil', 1, 'Apollo'), ('Barrage', 1, 'Pocket'), ('Affliction', 4, 'Pocket')

-- select deadlock_heroes.character_name,deadlock_abilities.ability_slot, deadlock_abilities.ability_name from deadlock_abilities
-- join deadlock_heroes
-- on deadlock_abilities.character_name = deadlock_heroes.character_name

-- Reflection
-- For this I did a one to many relation type. A foreign key is important for data integrity because it matches two tables together, so only one value needs to change and can match up.
