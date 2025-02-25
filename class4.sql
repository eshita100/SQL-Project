drop table if exists department;

create table department(
dept_name varchar(30) primary key,
dept_head varchar(30)
);

insert into department (dept_name,dept_head) values
('IT','Eshita'),
('Finanace','Raihan'),
('HR','Nabila');

select * from department;
delete from department where dept_head='Nabila';

insert into department (dept_name,dept_head) values ('HR','Nabila');
create table elpoyyyyyy(
id serial primary key,
f_name varchar(30),
L_name varchar(30),
age int not null,
locaton varchar(20) not null,
dept varchar(20) not null
);
select * from elpoyyyyyy;
insert into elpoyyyyyy (f_name,L_name,age,locaton,dept) values ('lala','ooo',23,'Dhaka','IT');
insert into elpoyyyyyy (f_name,L_name,age,locaton,dept) values ('laassd','ppp',22,'Dhaka','Finanace');
insert into elpoyyyyyy (f_name,L_name,age,locaton,dept) values ('Sadka','ppp',25,'Dhaka','IT');
insert into elpoyyyyyy (f_name,L_name,age,locaton,dept) values ('Madta','www',24,'Dhaka','Demo'); --error dibe as dept = demo entre deyar try korchi

alter table elpoyyyyyy add foreign key(dept) references department(dept_name); --foreign key add korte dibe na as dept=demo diyechi amra employy te jeta department table a nai so
delete from  department where dept_name='Finanace'; --delete korte dibe na as employyy table department table er dept_name dekhe cross check kore
--foreign key always primary key kei reference a rakhbe

-- CHECK Constrain
create table school(
name varchar,
school_name varchar default 'Abacool',
age int,
check (age>=10)
);
select select * from school;
insert into school (name,school_name) values ('Nabila',null);
insert into school (name,school_name,age) values ('Eshita','Salaka',20);
delete from school where name='Eshita';

create table products(
product_id serial,
product_name varchar,
product_price numeric, --numeric allow decimal value like 2.00 also
check (product_name!='Rose')
); 
select * from products;
-- DDL (create, alter, drop, Truncate[means table pura drop korbe na table structure with column thakbe but no data])
alter table products add column location varchar not null;
alter table products drop column location;
-- location column er data type change korte
alter table products alter location type varchar(10);
alter table products rename location to locass;