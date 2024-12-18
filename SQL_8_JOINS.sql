-- --------------------------------------------JOINS------------------------------------------------------------------ 
-- ------------- CROSS JOIN:- pratek row pratek col shi jodel----------------------------------------------
use enemy;
use sakila;
select * from avengers;
select * from avengers_enemy;
select * from weapon;
select * from avengers cross join avengers_enemy;
-- -------------- Inner Join--------------------------------------
--  EQUI JOIN
select heroic_name,enemy_name from avengers as a
inner join avengers_enemy as ae                           -- by default inner join asta inner keyword chi garaj nahi 
on a.ar_id=ae.ar_id;
-- INEQUI JOIN 
select heroic_name,enemy_name from avengers as a
inner join avengers_enemy as ae                           -- by default inner join asta inner keyword chi garaj nahi 
on a.ar_id!=ae.ar_id;

-- -----------------Natural join--------------------------------------------- 
select heroic_name,enemy_name from avengers
natural join avengers_enemy;

use sakila;
select heroic_name,enemy_name,weapon_name from avengers as a
inner join avengers_enemy as ae
inner join weapon as we                           -- apann tin table la ar_id ne inner join marla  
on a.ar_id=ae.ar_id and a.ar_id=we.ar_id;

select heroic_name,enemy_name,weapon_name from avengers as a
inner join avengers_enemy as ae
on a.ar_id=ae.ar_id
inner join weapon as we                           -- Same as natural join  
on a.ar_id=we.ar_id and ae.ae_id=we.ae_id;

select heroic_name,enemy_name,weapon_name from avengers as a
natural join avengers_enemy as ae
natural join weapon as we                          -- apann tin table la ar_id ne inner join marla  
