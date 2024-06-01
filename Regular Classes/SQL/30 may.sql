data types
int float char string 

sql data types
int ( 2 million plus)
char (0 to 255)  char(10)- hello     
varchar(0 to 255)  varchar(10)- hello 
float decimal wale number precision 23 10.1234534
time -hh:mm:ss
date- yyyy-mm-dd



commands of sql
ER diagram - entity relationship diagram , coding 0% related, but very important in interviews 
DQL- data query language- select
DML- data manipulation language-database modify- insert delete update
DDL- data definition language- alter rename drop create truncate
DCL- data control language- grant revoke 
TCL- transcation control language- callback savepoint start and commit


DDL

create CREATE is the same




create database Employ;

use Empoly;

create table Main (
EmployeeID INT Primary key,
First_Name Varchar(50),
Last_Name Varchar(50),
Birthdate date,
hiredate date,
salary decimal(10,2)
);

alter table main
add Email varchar(100);

alter table main 
modify column salary decimal(12,2);

alter table main 
drop column Birthdate;

drop table main; drop will remove the table including the data and the structure of the table

truncate table main; only removes the data from the table , structure remains 

rename table main to staff;

DML

insert into staff(EmployeeID, First_Name, Last_Name, hiredate, salary,Email)
values
(1,"Rohan","Bansal","2020-01-20",60000.00,"rohanbansal@gmail.com"),
(2,"Ayushman","Bansal","2020-04-22",70000.00,"rbansal@gmail.com"),
(3,"Manish","Bansal","2020-06-07",90000.00,"robansal@gmail.com"),
(4,"Rohan","sharma","2020-01-20",60000.00,"rohansharma@gmail.com");


update staff
set salary=100000, email="rohansharma1@gmail.com"
where EmployeeID=4;


delete from staff
where EmployeeID=4;


department- name, number of employees , deptID,manager_name
projects- name, ID, number of contributers,deptID

create table department(Dept_ID Int Primary Key,Department_Name varchar(20),NO_OF_employees int,manager_name varchar(100));
    
create table projects(projectID INT Primary Key,Project_name varchar(50),NO_OF_Contributers int,Dept_ID Int,
Foreign key (Dept_ID) references department(Dept_ID));

foreign key is a primary key of the first table used in second table as a regular column 
in the second table the values can be repeated meaning they can be non unique for different
rows but in the first table they will be unique for each of the rows  

Insert into department(Dept_ID, Department_Name, NO_OF_employees, manager_name)
Values
(101,"HR", 5, "Rohan_Bansal"),
(201,"Marketing", 10, "Manish_Bansal"),
(301,"sales", 15, "Anita_Bansal"),
(401,"purchase",10, "Rohit_Bansal"),
(501,"technical", 7, "Ankit_Bansal"),
(601,"Engineering", 10, "Ajay_Bansal"),
(701,"networking", 5, "Amit_Bansal");


project main 7 rows dept  hr hr hr sales engineering purchase purchase
1001
1002
2001

Insert into projects (projectID, Project_Name,NO_OF_Contributers,Dept_ID)
values
(1001,"project 1",12,101),
(1002,"project 12",10,101),
(1003,"new project 1",12,101),
(1004,"new project 1",12,301),
(1005,"new project 2",2,601),
(1006,"project 14",14,401),
(1007,"project 143",16,401);

alter table staff
add column Dept_ID INT;

alter table staff
add constraint constraint1
Foreign key (Dept_ID) references department(Dept_ID);


update staff
set Dept_ID=101
where EmployeeID=3;

update staff
set Dept_ID=401
where EmployeeID in (1,2);

update staff
set Dept_ID=601
where EmployeeID=4;



dbms
er
create, delete truncate drop 
update alter
insert
update 
primary key and foreign key ko set karna bhi seekha 


homework
7 dept

7 projects-8
4 staff- 12

select
joins


how to select the required data from the tables

select Dept_ID from department;


select * from department;


select * from department where dept_id=101;
 
select * from department where dept_id in (201,301,401);


aggregate functions count min max avg


select count(*) from staff;

 
select count(*) as number_of_people from staff;

select min(salary) as minimum_sal from staff;


select max(salary) as maximum_sal from staff;

select avg(no_of_employees) as avgemp from department;


group by and having  specific coulmn se group karna , having batata hai what should those groups have 

avg salary chaiye divided by dept id


select dept_id, avg(salary) as avg_salary from staff group by dept_id;

select dept_id, avg(salary) as avg_salary from staff group by dept_id having avg(salary)>70000;


order by , desc 

select * from staff order by hiredate;

select * from staff order by hiredate desc;

select * from staff order by hiredate desc limit 2;


nested queries

select * from staff where dept_id = (select dept_id from department where department_name="HR");

joins 
inner join   A intersection B
left outer join A-B
right outer join B-A



(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table



two tables
in those tables we usually have some matching values, and even if we dont we need to let sql know which 
attributes belong to which table so to do this we write the attributes as s.employye_id rather than just employee_id

select employeeid from staff; 

select s.employeeid from staff s;

emp id, first name and last name and dept name


select s.employeeid, s.first_name, s.last_name, d.department_name
from staff s
inner join
department d 
on s.dept_id=d.dept_id;


you can always solve it with either nested queries or with joins

select s.employeeid, s.first_name, s.last_name, 
(select department_name from department where dept_id=s.dept_id) 
as department_name from staff s;


select d.department_name , p.project_name
from department d 
left join 
projects p
on d.dept_id=p.dept_id;

select d.department_name , p.project_name
from department d 
right join 
projects p
on d.dept_id=p.dept_id;



select all coulmns from the staff table 

select * from staff;

department name department table 

select department_name from department;

project id of the department whose name is HR

avg salary for each department
table
deptname    avg salary 

select d.department_name,avg(salary) as avg_salary
from department d
join
staff s
on d.dept_id=s.dept_id
group by department_name;

return the names of projects with more than 5 contibutors whose avg salary is greater than 60000
project name  number of contributers avg(salary)

select p.project_name, p.no_of_contributers,avg(s.salary)  as avg_salary
from projects p
join staff s
on s.dept_id=p.dept_id
group by p.project_name, p.no_of_contributers
having p.no_of_contributers>5 and avg(s.salary)>60000;

































 