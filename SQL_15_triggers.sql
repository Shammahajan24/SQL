-- ==============================Trigger=============================================================
-- Advance Sql ekda pdf pahane
use enemy;
create table avenger_audit(
audit_id int primary key auto_increment,
ar_id int,
heroic_name varchar(30),
actions varchar(30),
action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER log_avenger_before_insert
before insert on avengers
for each row
begin

insert into Avenger_Audit(ar_id,heroic_name,actions,action_time)
values(NEW.ar_id,NEW.heroic_name,'BEFORE INSERT',now());
 END //
 
 DELIMITER ;
 
 SELECT * FROM Avengers;
 
 SELECT * FROM Avenger_Audit;
 
 INSERT INTO Avengers(ar_id,f_name,l_name,heroic_name,city)
 VALUES(8,'Natasha','Roman-Off','Black Widow','Russia');


drop trigger enemy.log_avenger_before_insert;

-- =======================================DELETE===========================================================
-- ======= Before Delete =======
 DELIMITER //
 
 CREATE TRIGGER log_avenger_before_delete
 BEFORE DELETE ON Avengers
 FOR EACH ROW
 BEGIN
 
 INSERT INTO Avenger_Audit(ar_id,heroic_name,actions,action_time)
 VALUES(OLD.ar_id,OLD.heroic_name,'BEFORE DELETE',NOW());
 
 END //
 
 DELIMITER ;
 
 DELETE FROM Avengers WHERE ar_id=1;
 