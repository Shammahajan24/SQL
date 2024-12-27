-- -----------------------Normalization :- 1NF,2NF,3NF --------------------------------------------------------------- 
 -- study this topic with types and store procedure ekda vachne ani baghne 
 
 -- --------Procedure-------------------------------------------------------
 use enemy;
 DELIMITER //

CREATE PROCEDURE AvengerAssemble()
BEGIN

DROP TABLE IF EXISTS Avengers;
 

create table avengers(
  ar_id int PRIMARY key AUTO_INCREMENT,
  f_name varchar(30),
  l_name varchar(30),
  heroic_name varchar(30),
  city varchar(30));
 

  insert into avengers(f_name,l_name,heroic_name,city)
  VALUES('Roger','Steve','Captain America','NYC'),
        ('Tony','Stark','Iron Man','NYC'),
  ('Thor','Odinson','Thor','NYC'),
  ('Peter','Parker','Spider-Man','NYC'),
    ('Scott','Lang','Ant-Man','California'),
  ('Stephen','Strange','Dr.Strange','Florida'),
  ('James','Barnes','Winter Soldier','California');
 
  SELECT * FROM Avengers;
 
  END //
 
  DELIMITER ;

CALL AvengerAssemble();

-- ------------In Parameters----------------------------------------
DELIMITER //

CREATE Procedure GetAvengerByCity(IN city_name VARCHAR(30))
BEGIN

SELECT * FROM Avengers where city= city_name;

END//
DELIMITER ;

CALL GetAvengerByCity('florida'); 

-- ------------Out Parameters----------------------------------------
DELIMITER //

CREATE Procedure CountAvengerByCity(IN city_name VARCHAR(30),OUT avenger_count INT)
BEGIN

SELECT count(*) into avenger_count FROM avengers where city= city_name;

END//
DELIMITER ;

CALL CountAvengerByCity('florida',@avenger_count);
select @avenger_count; 


-- ------------In-Out Parameters----------------------------------------
DELIMITER //

CREATE Procedure UpdateHeroicName(INOUT hero_name VARCHAR(30))
BEGIN

set hero_name=concat('I am', hero_name);

END//
DELIMITER ;
SET @hero_name="Sham";
CALL UpdateHeroicName(@hero_name);
select @hero_name; 