--1) create the animal table
CREATE TABLE animals(
id INTEGER PRIMARY KEY NOT NULL,
species TEXT NOT NULL,
name TEXT NOT NULL,
age INTEGER NOT NULL, 
haseaten INTEGER NOT NULL CHECK (haseaten IN (0,1)),
favfood TEXT NOT NULL 
)

--2) adding new item

INSERT INTO  animals (species, name, age, haseaten, favfood) 
VALUES ("Scorat" , "Totseanea", "13" , "0" , "grass" )

--3) making all the animals unfead

UPDATE  animals SET haseaten="0" WHERE haseaten=1

--4) sending the animal to another zoo 

DELETE FROM animals WHERE name='vremq'

--5) removing a column

ALTER TABLE animals DROP COLUMN haseaten

--6)adding the origin column which is NULL

ALTER TABLE animals ADD origin VARCHAR (255)  

--7) changed the origin individually for each id

UPDATE  animals SET origin="SHkup" WHERE  id="3"

--8) CHALLENGE 

UPDATE  animals SET haseaten="1" WHERE haseaten=0