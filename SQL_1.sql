CREATE DATABASE shield;  -- to create a database

USE shield;
USE shield; 
create table Avengers(     -- to create a table 
ar_id INT,
f_name VARCHAR(30),
l_name VARCHAR(30),
heroine_name VARCHAR(30),
city VARCHAR(30)
);
DESC TABLE Avengers;
DESC  Avengers;
SHOW TABLES;
USE sakila;
show tables;
desc actor;

USE shield;
INSERT INTO Avengers(ar_id,f_name,l_name,heroine_name,city)
VALUES(1,"Steve","Rogers","Captain America","Brooklyn");
select * from Avengers;
INSERT INTO Avengers(ar_id,f_name,l_name,heroine_name,city)
VALUES (2,"Tony","stark","Iron man","NYC"),
(3,"Thor","odison","Thor","NYC"),
(4,"Peter","parker","Spider-Man","NYC"),
(5,"Scott","Lang","Ant-man","NYC");
select * from Avengers;
delete from Avengers;
INSERT INTO Avengers(ar_id,f_name,l_name)  
VALUES(6,"Clint","Fake");              
select * from Avengers;

INSERT INTO Avengers
VALUES(10,"Bruce","Banner","HULK","Arizone");

INSERT INTO Avengers
VALUES(11,"wanda","Maximoff's","Scarlet Witch","NYC");

select f_name,l_name from Avengers;
select f_name,l_name from Avengers limit 6;

-- New Database With Types--
CREATE DATABASE Enemy;
USE Enemy;
create table Avengers(     -- to create a table 
ar_id INT,
enemy_name VARCHAR(30),
City VARCHAR(30)
);
INSERT INTO Avengers
Values(1,"Zola","Germony");

-- Multiple values
INSERT INTO Avengers
Values
(2,"Loki","Assguard"),
(3,"Goblin","NYC"),
(4,"Thanos","Titan");
-- Specific column
INSERT INTO Avengers(ar_id,enemy_name)
VALUES(5,"Electro");
-- Column Order Change
INSERT INTO Avengers(enemy_name,ar_id,city)
VALUES("Red skull",6,"Vormir");
INSERT INTO Avengers(enemy_name,ar_id,city)
VALUES("Dormammu's",7,"Space");




 


