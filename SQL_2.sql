USE enemy;
select * from avengers;
drop table avengers;
create table avengers(
  ar_id int,
  f_name varchar(30),
  l_name varchar(30),
  heroic_name varchar(30),
  city varchar(30));
 insert into avengers(ar_id,f_name,l_name,heroic_name,city)
  VALUES(1,'Roger','Steve','Captain America','NYC'),
      (2,'Tony','Stark','Iron Man','NYC'),
  (3,'Thor','Odinson','Thor','NYC'),
  (4,'Peter','Parker','Spider-Man','NYC'),
  (5,'Scott','Lang','Ant-Man','California'),
  (6,'Stephen','Strange','Dr.Strange','Florida'),
  (7,'James','Barnes','Winter Soldier','California');
  select * from avengers;
  select * from avengers where ar_id=5;
  select * from avengers where ar_id<>5;-- aleternate != pan use karu shakto 
  select * from avengers where ar_id>5;
  select * from avengers where f_name>'R';
  select * from avengers where f_name<'R';
  select * from avengers where ar_id<5;
  select * from avengers where ar_id>=5;
  select * from avengers where f_name>='R';
  select * from avengers where ar_id<=5;
  select * from avengers where f_name<='R';  -- Sql cha issue ahe yat ani grater madje R pan dakhvtay 
  DROP TABLE avengers;
  
  create table avengers(
  ar_id int,
  f_name varchar(30),
  l_name varchar(30),
  heroic_name varchar(30),
  city varchar(30));
  insert into avengers(ar_id,f_name,l_name,heroic_name,city)
  VALUES(1,'Roger','Steve','Captain America','NYC'),
      (2,'Tony','Stark','Iron Man',NULL),
  (3,'Thor','Odinson','Thor','NYC'),
  (4,'Peter','Parker','Spider-Man',NULL),
  (5,'Scott','Lang','Ant-Man','California'),
  (6,'Stephen','Strange','Dr.Strange','Florida'),
  (7,'James','Barnes','Winter Soldier',NULL);
  select * from avengers where city is NULL;
  select * from avengers where city is not NULL;
  select * from avengers where city='NYC' and f_name="Thor";
  select * from avengers where city='NYC' OR f_name="Scot";
  select * from avengers where city='NYC' and (f_name="Thor" and l_name="Odison");
  select * from avengers where city='NYC' or (f_name="Thor" and l_name="Odison");
  select * from avengers where f_name in ("Thor","Peter");
  select * from avengers where f_name not in ("Thor","Peter");
  
  -- between operator
  select * from avengers where ar_id between 2 and 5;
  select * from avengers where f_name between 'p' and 't';-- p ani t madhe t cha data yenar nahi 
  select * from avengers where ar_id not between 2 and 5;
  select * from avengers where f_name not between 'p' and 't';-- p ani t madhe t cha data yeil 
  
  -- like operator
  select * from avengers where f_name like 'T%';
  select * from avengers where l_name like '%n';
  select * from avengers where f_name like '__o%';
  select * from avengers where f_name like '%ot%';
  
  -- Distinct and order by
  select Distinct city from avengers  order by city
  