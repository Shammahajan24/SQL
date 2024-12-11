Use enemy;
select * from avengers;
update avengers set city="Mumbai" where ar_id=2;

update avengers set city = 
CASE                                    -- update type 2 case-end and between condition its totally  use for  if you have to add default values
when ar_id=1 then "Dadar"
else "Mumbai" 
end ;

delete from avengers where ar_id=5;
insert into avengers(ar_id,f_name,l_name,heroic_name,city) values
(5,'Scott','Lang','Ant-Man','California');

-- firse naya table 
