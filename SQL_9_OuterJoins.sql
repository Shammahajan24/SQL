-- -------------------------------------------Outer Join-------------------------------------------------------------------
--  ------------------------------------------left join------------------------------------------------------------------
use sakila;                                       -- left join madhe left vala data sagla yeto ani right valtya deta madhun fakt same vala data yeto 
select * from avengers;
select avengers.ar_id,heroic_name,enemy_name from  avengers left join avengers_enemy
on avengers.ar_id=avengers_enemy.ar_id;
 -- -------------------------------------------Right join-------------------------------------------------------------- 
select avengers.ar_id,heroic_name,enemy_name from  avengers right join avengers_enemy
on avengers.ar_id=avengers_enemy.ar_id  ;                -- Right join madhe left cha ulat

-- ----------------------------------- Union and union all---------------------------------------------------------------------------------- 
select avengers.ar_id,heroic_name,enemy_name from  avengers left join avengers_enemy
on avengers.ar_id=avengers_enemy.ar_id
union
select avengers.ar_id,heroic_name,enemy_name from  avengers right join avengers_enemy
on avengers.ar_id=avengers_enemy.ar_id;

-- -------------------------------------Self join----------------------------------------------------------------------------------------
DROP TABLE employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

INSERT INTO
    employees (
        employee_id,
        employee_name,
        manager_id
    )
VALUES (1, 'John Doe', 3),
    (2, 'Jane Smith', 1),
    (3, 'Alice Johnson', NULL),
    (4, 'Bob Brown', 2),
    (5, 'Emily White', 2);


SELECT * from employees;
SELECT e.employee_name as Employee ,m.employee_name as Manager FROM employees as e
INNER JOIN employees as m ON e.manager_id = m.employee_id;
 