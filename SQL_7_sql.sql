-- -------------------On delete clause---------------------------------
use enemy;                         -- on delete apan cretate kartana vaprto ani ON DELETE CASCADE takteo he jar asel tar parent table delete jhala tar child pan hoil as foreign key.
select * from avengers;            -- ON DELETE SET NULL yachane child column with refrence foreign key delete  y hot default null takta
select * from avengers_enemy;
use sakila;
drop table avengers;
drop table avengers_enemy;
delete from avengers where ar_id=4;
update avengers set ar_id=16 where ar_id=6;     -- ithe mi ON updtae cascade vaprla ahe jo parent barobar child la update karto  
