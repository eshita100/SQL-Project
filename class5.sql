--DML
--example of Distinct,order by, limit, offset, aggregate function

create table workers(
id serial not null,
f_name varchar(20) not null,
l_name varchar(20) not null,
age int not null,
location varchar(20) not null default 'Dhaka',
dept varchar(20) not null
);
select * from workers;
truncate table workers;
alter table workers add column salary real not null; --real , numeric same kaj e kore

insert into workers (f_name,l_name,age,location,dept,salary) values 
('Nablu','sultana',23,'foridpur','IT',324500.232),
('Eshu','sultana',22,'fotyty','IT',324555.232),
('kako','sultana',50,'Shylet','LOP',324454.232),
('Ranu','sultana',20,'Dhaka','LOP',324500.232);

insert into workers (f_name,l_name,age,location,dept,salary) values
('Bani','sultana',20,'Dhaka','LOP',52222.232);

select distinct(location) from workers;
select distinct(dept) from workers;
select count(distinct(dept)) as Num_Of_Dept from workers;
select count(id) as employ_amount from workers;


-- order by clause to sort
select distinct(dept) from workers order by dept;
select f_name from workers order by f_name asc;
select f_name from workers order by f_name desc;
select f_name,age from workers order by age;
select f_name,age from workers order by age,f_name asc;
select * from workers order by age,f_name asc; --age er basis a sort hobe but dui jon er age same pele f_nam asc wise sort kore dibe

select * from workers limit 3;
select * from workers order by salary asc limit 3;
-- only first row dekhte amra use korte pari offset 0 as offset value start hoy zero value theke
select * from workers limit 1 offset 0; --offset 0 mean first record theke access korbe limit is 1
select * from workers limit 3 offset 0;
select * from workers limit 3 offset 3;

--find second highest salary eith employ name
select f_name,l_name,salary from workers order by salary desc limit 1 offset 1;