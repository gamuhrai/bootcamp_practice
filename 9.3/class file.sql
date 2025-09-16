INSERT INTO pets VALUES
(1,'Wei','Bao, Lian','Dog','Bath, Bath'),
(2,'Dzigbode','Nini','Dog','Walk'),
(3,'Akmal','Bastet','Cat','Litter change'),
(4,'Carly','Nala','Cat','Litter change'),
(5,'Mikayla','Thumper','Rabbit','Feed'),
(6,'Frederick','Cooper, Marshmallow','Dog, Rabbit','Walk, Feed');-- Create owners table and insert values
CREATE TABLE owners (
  id INT PRIMARY KEY NOT NULL,
  owner_name VARCHAR(255)
);

INSERT INTO owners (ID, owner_name) VALUES
(1, 'Wei'),
(2, 'Dzigbode'),
(3, 'Akmal'),
(4, 'Carly'),
(5, 'Mikayla'),
(6, 'Frederick');

SELECT * FROM owners;

-- Create pet name table and insert values
CREATE TABLE pet_names (
  id INT NOT NULL PRIMARY KEY,
  owner_id INT NOT NULL,
  pet_name VARCHAR(255),
  type VARCHAR (255)
);

INSERT INTO pet_names (id, owner_id, pet_name, type) VALUES
(10, 1, 'Bao', 'Dog'),
(11, 1, 'Lian', 'Dog'),
(12, 2, 'Nini', 'Dog'),
(13, 3, 'Bastet', 'Cat'),
(14, 4, 'Nala', 'Cat'),
(15, 5, 'Thumper', 'Rabbit'),
(16, 6, 'Cooper', 'Dog'),
(17, 6, 'Marshmallow', 'Rabbit');

SELECT * FROM pet_names;

-- Select owners and pets from joined table
SELECT owner_name, pet_name
FROM owners
INNER JOIN pet_names ON owners.id = pet_names.owner_id;

-- BONUS
-- Create service table and insert data
CREATE TABLE service (
  id INT NOT NULL PRIMARY KEY,
  service_type VARCHAR(255)
);

INSERT INTO service (id, service_type)
VALUES
(22, 'Bath'),
(33, 'Walk'),
(44, 'Litter change'),
(55, 'Feed');

-- Create new pet tables that takes a service id
CREATE TABLE pet_names_new (
  id INT NOT NULL PRIMARY KEY,
  owner_id INT NOT NULL,
  service_id INT NOT NULL,
  pet_name VARCHAR(255),
  type VARCHAR (255)
);

-- Insert data with service id
INSERT INTO pet_names_new (ID, owner_id, service_id, pet_name, type) VALUES
(10, 1, 22, 'Bao', 'Dog'),
(11, 1, 22, 'Lian', 'Dog'),
(12, 2, 33, 'Nini', 'Dog'),
(13, 3, 44, 'Bastet', 'Cat'),
(14, 4, 44, 'Nala', 'Cat'),
(15, 5, 55, 'Thumper', 'Rabbit'),
(16, 6, 33, 'Cooper', 'Dog'),
(17, 6, 55, 'Marshmallow', 'Rabbit');

-- Join all three tables
SELECT owners.owner_name,
pet_names_new.pet_name, pet_names_new.type, service.service_type
FROM owners
INNER JOIN pet_names_new ON owners.ID = pet_names_new.owner_id
INNER JOIN service ON service.id = pet_names_new.service_id;


--activity 4
-- 1. Create a Customer table
create table customer (
	id serial, 
	first_name VARCHAR(30) not null, 
	last_name varchar(30) not null,
	primary key (id)
);


-- 2. Populate that table
-- 'Bob Smith', 'Jane Davidson', 'Jimmy Bell', and 'Stephanie Duke'
insert into customer (first_name, last_name)
values
	('Bob', 'Smith'),
	('Jane', 'Davidson'),
	('Jimmy', 'Bell'),
	('Stephanie', 'Duke');



-- 3. View Table
select * from customer;


-- 4. Create Customer Email table




-- 5. Populate the second table
-- 'bobsmith@email.com', 'jdavids@email.com', 'jimmyb@email.com', 'sd@email.com'




-- 6. View Table



-- 7. Create Customer Phone Number table




-- 8. Populate Third Table
-- '435-344-2245', '332-776-4678', '221-634-7753', '445-663-5799'




-- 9. View Table


-- activity 6 data relationships