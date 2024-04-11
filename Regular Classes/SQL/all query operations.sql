
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Department VARCHAR(100),
    Position VARCHAR(100),
    Salary DECIMAL(10,2),
    HireDate DATE
);

alter table employees1
rename column position to title;


insert into  Employees1(FirstName, LastName,DateOfBirth,Gender,Department,title,Salary,HireDate) values
('John','sharma','1995-10-20','Male','IT','Software Developer',800000.00,'2003-04-12'),
('Jane', 'Smith', '1985-09-20', 'Female', 'HR', 'HR Manager', 90000.00, '2010-03-15'),
('Michael', 'Johnson', '1982-12-10', 'Male', 'Finance', 'Financial Analyst', 85000.00, '2008-11-20'),
('Emily', 'Brown', '1992-03-25', 'Female', 'Marketing', 'Marketing Specialist', 75000.00, '2016-02-10'),
('David', 'Williams', '1988-07-05', 'Male', 'Sales', 'Sales Manager', 95000.00, '2012-08-05'),
('Jessica', 'Jones', '1991-11-30', 'Female', 'IT', 'Systems Administrator', 82000.00, '2017-04-03'),
('Matthew', 'Martinez', '1984-06-18', 'Male', 'Finance', 'Senior Accountant', 88000.00, '2009-09-22'),
('Sarah', 'Anderson', '1993-08-12', 'Female', 'Sales', 'Sales Representative', 70000.00, '2018-01-07'),
('Daniel', 'Taylor', '1987-04-28', 'Male', 'Marketing', 'Marketing Manager', 92000.00, '2013-06-12'),
('Amanda', 'Harris', '1989-01-22', 'Female', 'HR', 'HR Assistant', 65000.00, '2014-10-18'),
('Christopher', 'Thomas', '1983-10-08', 'Male', 'IT', 'Database Administrator', 83000.00, '2011-12-15'),
('Ashley', 'Walker', '1990-02-14', 'Female', 'Finance', 'Financial Controller', 96000.00, '2015-05-20'),
('Ryan', 'Nelson', '1986-05employees1-07', 'Male', 'Sales', 'Sales Associate', 72000.00, '2010-07-25'),
('Jennifer', 'White', '1994-07-28', 'Female', 'Marketing', 'Marketing Assistant', 68000.00, '2016-09-30'),
('Robert', 'King', '1981-09-03', 'Male', 'IT', 'Network Engineer', 84000.00, '2007-11-10'),
('Megan', 'Perez', '1985-12-17', 'Female', 'Finance', 'Financial Analyst', 89000.00, '2011-03-05'),
('Jason', 'Garcia', '1988-03-10', 'Male', 'Sales', 'Senior Sales Manager', 97000.00, '2013-04-15'),
('Lauren', 'Scott', '1992-01-05', 'Female', 'HR', 'HR Coordinator', 67000.00, '2017-08-20'),
('Eric', 'Ramirez', '1984-04-22', 'Male', 'Marketing', 'Marketing Director', 94000.00, '2012-10-10'),
('Michelle', 'Clark', '1989-06-14', 'Female', 'IT', 'Software Engineer', 81000.00, '2018-11-05');

select * from employees1;
select FirstName, LastName from employees1;
select * from employees1 where Gender = 'Male';
select * from employees1 where Gender = 'Male' and Department = 'IT';
select * from employees1 where Gender = 'Male' or Department ='IT';    
select * from employees1 where not Department='IT';
select * from employees1 where FirstName like 'J%';
select * from employees1 where FirstName like '%n';
select * from employees1 where FirstName like '%e_';
select * from employees1 where Department = 'IT' or Department='Finance';
select * from employees1 where Department in ('IT','HR','Finance');
select * from employees1 where DateOfBirth between '1980-01-01' and '1995-01-01';
select FirstName as 'Hello' from employees1;
select FirstName from employees1 order by Salary desc;
select Department, Gender from employees1 group by Department;


select min(Salary) as Minsalary from employees1;
select max(Salary) from employees1;
select sum(Salary) from employees1;
select avg(Salary) from employees1;

select count(*) from employees1;
select count(Department) from employees1;
select count( distinct Department) from employees1;


select avg(Salary) from employees1 group by Department;
select avg(Salary), Department from employees1 group by Department;

select avg(Salary), Gender from employees1 group by Gender;


select avg(Salary), Department from employees1 group by Department having avg(Salary)>90000;


select FirstName from employees1 where Salary> (select avg(Salary) from employees1);

join, set operations
join , inner join and outer join , how we combine tables
set operations . union intesection , 




