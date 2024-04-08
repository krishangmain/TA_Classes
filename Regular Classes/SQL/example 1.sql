create database student;
use student;

create table table1(
id int primary key,
name varchar(50),
age int not null
);

alter table table1 
add column email varchar(60);

insert into table1 values(001,"Rahul",21,"rh@gmail.com");
insert into table1 values(002,"Rahul",21,"rh@gmail.com");
insert into table1 values(003,"kartik",23,"kjhj@gmail.com");
insert into table1 values(005,null,24,"rnk@gmail.com");

select * from table1;





