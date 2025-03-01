create table cls6employee(
id serial primary key,
name varchar(30) not null,
dept varchar(30) not null,
date_of_joining timestamp not null default current_timestamp,
status varchar(10) default 'Active',
salary real not null,
last_update timestamp default now() --current_timestamp, now() both work as same
);
select * from cls6employee;
select count(*) from cls6employee; --(count,sum,max,min,avg,distinct) is aggregate function
insert into cls6employee (name,dept,salary) values 
('Napti','IT',3000.99),
('Vhapti','IT',4000.99),
('kalop','IT',78000.99),
('Eshita','IT',894000.99),
('Nabila','Commarce',34000.99);

alter table cls6employee add column location varchar default 'Dhaka';

--count of employ
select count(*) from cls6employee;


--same quary different ways
select count(*) as emplye_num from cls6employee where salary >3000 and salary<50000;
select  name,salary from cls6employee where salary between 3000.99 and 78000.99; --[between er por deya number gula exclude kore dibe]
--find sum of all people salary
select sum(salary) as salary_sum from cls6employee where salary>78000.99;
--saalry avg
select avg(salary) as salary_average from cls6employee where salary>78000.99;
--maximum salary
select max(salary) as salary_max from cls6employee where salary>78000.99;
select salary as salary_max from cls6employee order by salary desc limit 1 offset 0;

--name of employ with minimum salary
select name,salary from cls6employee order by salary desc limit 1 offset 1; 

--DML (update data for a employ)
update cls6employee set salary=5000000 where name in ('Eshita','Nabila');
update cls6employee set location='Kerela' where name in ('Eshita','Nabila');

--DML (delete command)
delete from cls6employee where name='Napti' or name='MOhit';

--Group By [bring similiar data together]
 select location,count(*) from cls6employee; --error dibe as we can not put reguler function and aggrigiate function together without using group by function
 select dept,count(*) from cls6employee group by dept; 
 select dept,location,count(*) from cls6employee group by dept; --ERROR dibe cause  select er por je koy ta regular function ache sob gula group bny er por mention kora lage
 select dept,location,count(*) from cls6employee group by dept,location;
 select dept,location,count(*) from cls6employee group by dept,location where salary>3000; --error dibe as group by er age where dite hoy not after
 select dept,location,count(*) from cls6employee where salary>3000 group by dept,location; --error dibe as group by er age where dite hoy not after
 select dept,location,count(*) from cls6employee where count(*) > 1 group by dept,location; -- where er por aggrigate funtion use kora jabe na
 select dept,location,count(*) from cls6employee group by dept,location having count(*) > 1; -- having er por aggrigate funtion use kora jay
 select dept,location,count(*) from cls6employee group by dept,location having count(*)>3000; 


 

select * from cls6employee;
 
