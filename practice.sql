select * from employ;

insert into employ values('Eshita', 23);
insert into employ values('Helo', ); 
// error hobe 

insert into employ(emp_name) values('Helok')
// emn numm value enter hoye jete pare table a as amra constrain set korini table er jonno
drop table employ; //DDL command

create table employ(
employ_name varchar(20) not null,
employ_id int not null,
employ_age int default 20 
);

insert into employ(employ_name,employ_id, employ_age) values('Helok', null,30);
// also this time it will not work as amdr employ_id create korar time a not null soraye dite hobe

create table employ(
employ_name varchar(20),
employ_id char(5),
employ_age int default 18 not null
);

insert into employ(employ_name,employ_id) values('Eshita', 201);
insert into employ(employ_name,employ_id, employ_age) values('Era', 2,null);
insert into employ values('Sakil',3);
insert into employ values('Sakira',12,4),('Ratul',13,4);

