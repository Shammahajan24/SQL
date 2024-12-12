-- ------------Constraint
create table yy(
id int not null,
age int check (age >18),
degree varchar(30) default "Berojgar");

insert into yy (id,age,degree) values(1,22,"graduate");
insert into yy (id,age) values(2,26);
select * from yy;

-- -----------------------------PRIMARY KEY(not null + unique)------------------------------------------------
