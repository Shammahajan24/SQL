-- ====== IF-THEN Statement==========

DELIMITER //

CREATE PROCEDURE CheckAvengerExistsInCity(IN city_name VARCHAR(30), OUT message VARCHAR(30))

BEGIN

DECLARE avenger_count INT;

SELECT count(*) INTO avenger_count FROM Avengers where city =city_name;

IF avenger_count>0 THEN
    SET message ='Avengers Exists In the city';
END IF;

END //

DELIMITER ;

CALL CheckAvengerExistsInCity('california',@message);

SELECT @message;


-- ====== IF-THEN-ELSE Statement==========

DELIMITER //

CREATE PROCEDURE CheckAvengerExistsInCity2(IN city_name VARCHAR(30), OUT message VARCHAR(255))

BEGIN

DECLARE avenger_count INT;

SELECT count(*) INTO avenger_count FROM Avengers where city =city_name;

IF avenger_count>0 THEN
    SET message ='Avengers Exists In the city';
ELSE
    SET message ="Avengers Doesn't Exists In the city";
END IF;

END //

DELIMITER ;

CALL CheckAvengerExistsInCity2('califonia',@message);

SELECT @message;


-- ====== IF-THEN-ELSEIF-ELSE Statement==========

DELIMITER //

CREATE PROCEDURE CheckAvengerExistsInCity3(IN city_name VARCHAR(30), OUT message VARCHAR(255))

BEGIN

DECLARE avenger_count INT;

SELECT count(*) INTO avenger_count FROM Avengers where city =city_name;

IF avenger_count>2 THEN
    SET message ='Avengers Activity HiGH In the city';
ELSEIF avenger_count BETWEEN 1 AND 2 THEN
    SET message ="Avengers Activity MODERATE In the city";
ELSE
    SET message ="THis city is safe";
END IF;

END //

DELIMITER ;

CALL CheckAvengerExistsInCity3('NYCs',@message);

SELECT @message;

-- ====== CASE Statement==========

DELIMITER //

CREATE PROCEDURE CheckAvengerExistsInCity4(IN city_name VARCHAR(30), OUT message VARCHAR(255))

BEGIN

DECLARE avenger_count INT;

SELECT count(*) INTO avenger_count FROM Avengers where city =city_name;

CASE
WHEN avenger_count>2 THEN
    SET message ='Avengers Activity HiGH In the city';
WHEN avenger_count BETWEEN 1 AND 2 THEN
    SET message ="Avengers Activity MODERATE In the city";
ELSE
    SET message ="THis city is safe";
END CASE;

END //

DELIMITER ;

CALL CheckAvengerExistsInCity4('NYC',@message);

SELECT @message;


-- ====== CASE_2 Statement==========

DELIMITER //

CREATE PROCEDURE CheckDays(IN days INT, OUT message VARCHAR(255))

BEGIN


CASE
WHEN days=1 THEN
    SET message ='Sunday';
WHEN days=2 THEN
    SET message ="Monday";
ELSE
    SET message ="Holiday";
END CASE;

END //

DELIMITER ;

CALL CheckDays(2,@message);

Add class comment…


 "-- ==== IN Parameter ===== DELIMITER //…"

-- ==== IN Parameter =====

DELIMITER //

CREATE PROCEDURE GetAvengerByCity(IN city_name VARCHAR(30))
BEGIN

SELECT * FROM Avengers where city = city_name;

END //

DELIMITER ;

CALL GetAvengerByCity('florida');

-- ===== OUT Parameter ===

DELIMITER //

CREATE PROCEDURE CountAvengerInCity(IN city_name VARCHAR(30), OUT avenger_count INT)
BEGIN

SELECT COUNT(*) INTO avenger_count FROM avengers WHERE city=city_name;

END //

DELIMITER ;

CALL CountAvengerInCity('california',@avenger_count);
SELECT @avenger_count;

-- ====== INOUT Parameter =======

DELIMITER //

CREATE PROCEDURE UpdateHeroicName(INOUT hero_name VARCHAR(30))

BEGIN

SET hero_name = CONCAT('I am ', hero_name);

END //

DELIMITER ;

SET @hero_name ='Iron Man';
CALL  UpdateHeroicName(@hero_name);
SELECT @hero_name;


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
