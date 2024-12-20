-- IF NULL/NULL IF ------------------------
select nullif(city,"NYC") as new_null from avengers;
select ifnull(ar_id,4),enemy_name from avengers_enemy;
select * from avengers_enemy;
select * from avengers;

-- --------------Subquery:-Nested query---------------------------------------------- 
--  ----------single row sub query---------------------------------------
select heroic_name from avengers where ar_id=(select ar_id from avengers_enemy where enemy_name='hela');
--  --------------Multiple row subquery------------------
select heroic_name from avengers where ar_id in (select ar_id from avengers_enemy where enemy_name in ('hela','electro'));
-- --------------------------In,Any,All---------------------------------------------
select * from xx;
select name,salary from xx where salary > All(select salary from xx where salary IN(5,12,14,8));
select name,salary from xx where salary > Any(select salary from xx where salary IN(5,12,14,8)); 

-- -----------------------------View------------------------------------------- 
 