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

-- HW:-firse naya table banana padega adha jindgi sala crate drop mai chala jayega 

CREATE TABLE xx (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20),
    salary int
);

use enemy;
insert INTO
xx (name, salary)
values ('a', 1),
    ('a', 2),
    ('a', 3),
    ('a', 4),
    ('b', 5),
    ('b', 6),
    ('b', 7),
    ('b', 8),
    ('c', 9),
    ('c', 10),
    ('c', 11),
    ('c', 12),
    ('d', 13),
    ('d', 14),
    ('d', 15),
    ('d', 16);
use enemy;   
Select * from xx;

select * from xx where salray < max(salary);

select name ,min(salary) from xx group by name having max(salary)>8;

select salary from xx
order by salary desc
limit 1 offset 2;

SELECT MAX(salary) AS second_highest_salary
FROM xx
WHERE salary < (SELECT MAX(salary) FROM xx);

update xx set salary=16 where salary=15; 