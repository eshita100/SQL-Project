--JOins
--inner join(matching data from both the table based on the given join clause)
--left join(All data from left table will appear and the relevent right table side data will appear)
--right join(All data from right table will appear and the relevent left table side data will appear)
--full join(everything from the left side table and  everything from the right side table will appear)
--left only/ left outer(left table er leftover data will appear)
--right only/ right outer(right table er leftover data will appear)
--not inner/ full outer(left,right table er leftover data will only appear) or we can say (left only+right only)
create table course(
c_name varchar(20),
course_element varchar(20)
);
alter table coyrses rename to course; --if needed then rename like this
alter table course rename column course to course_naame;
select * from course;
insert into course values('Eshit','tablue'),('Raki','Python'),('Nakil','Science'),
('Ela','SQL'),('Ashoka','Math'),('Rokon','English');
drop table course;
create table studetsss(
name varchar(20),
age varchar(20)
);
insert into studetsss values('Eshit',23),('Nakil',20),('Raki',30),('Dalia',30),('Ela',34),('Sultan',21);
select * from studetsss;drop table studetsss;
--inner join
select studetsss.name,age,course.c_name,course_element from studetsss inner join course on  studetsss.name=course.c_name; 
--left join
select studetsss.name,age,course.c_name,course_element from studetsss left join course on  studetsss.name=course.c_name; 
--right join
select studetsss.name,age,course.c_name,course_element from studetsss right join course on  studetsss.name=course.c_name; 
--full join
select studetsss.name,age,course.c_name,course_element from studetsss full join course on  studetsss.name=course.c_name; 
--left only
select studetsss.name,age,course.c_name,course_element
from studetsss left outer join course on  studetsss.name=course.c_name;--in postgre it does not work like this i need to add a where clause 
--also to get exact result
select studetsss.name,age,course.c_name,course_element
from studetsss left outer join course on  studetsss.name=course.c_name where course.c_name is null;
--in postgre right outer join just likhle does not work like this i need to add a where clause 
--also to get exact result
select studetsss.name,age,course.c_name,course_element
from studetsss right outer join course on  studetsss.name=course.c_name where studetsss.name is null;
--not inner join/ full outer join(those who are not part of inner join)
select studetsss.name,age,course.c_name,course_element 
	from studetsss full outer join course on  studetsss.name=course.c_name
		where course.c_name is null or studetsss.name is null; 


------------------------------------------------------
-- join combines columns and the number of records/tuples will appear depending on the type of join applied
-- union combines the rows 
--suppose we have record from different table on customer purchase from different months
create table may(
day int not null,
customer varchar(20),
purchases int,
type varchar(20)
);
create table june(
day int not null,
customer varchar(20),
purchases int,
type varchar(20)
);
create table july(
day int not null,
customer varchar(20),
purchases int,
type varchar(20)
);
insert into may values (4,'Eshita',5,'credit'),(10,'Nabila',6,'credit'),(28,'CCCCC',1,'credit');
insert into june values (1,'DDDDD',3,'credit'),(28,'FFFF',4,'cash'),(28,'EEEE',2,'credit');
insert into july values (2,'GGGG',2,'credit'),(15,'GREFD',1,'credit'),(21,'WWWW',7,'credit');

select * from may union select * from june union select * from july order by customer; -- all customer data row by row from different tables
-- to create a table on all the combined collected data from different tables
create table union_output as
	select * from may union select * from june union select * from july order by customer; select * from union_output;

------tabel VS view
--table takes physical storage in the database inside the server but view is nothing but a projection of the data

create view union_output_view as
	select * from may union select * from june union select * from july order by customer; select * from union_output;
select * from union_output_view;
