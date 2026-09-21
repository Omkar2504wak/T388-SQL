select 3*4 as multipication;

select 13/4 as Quotient;

select 37!=67 as compare;
select database();

-- logical operator
select not false;

use T388;
select database();
show databases;
CREATE TABLE Employee (
EmployeeId INT PRIMARY KEY,
FullName VARCHAR(45) NOT NULL,
Department VARCHAR(45) NOT NULL,
Salary float NOT NULL,
Gender VARCHAR(45) NOT NULL,
Age INT NOT NULL
);

select * from Employee;
delete from employee;

delete from employee where Gender ="mALE";

insert into employee values

(2005,"omkar","IT",45000,"Male",20);
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

truncate employee;

alter table employee
ADD Location varchar(10);

alter table employee
ADD Bonus float after salary;

 alter table employee
ADD Title varchar(5) first;

describe employee; -- this is for comment
describe employee;
alter table employee change column location address varchar(35);

alter table employee modify FullName varchar(35);

select * from employee;
update employee set address = "thane";
alter table employee
drop address , drop title , drop bonus;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

alter table employee
ADD Location varchar(10);
alter table employee
ADD Bonus float after salary;
alter table employee
ADD Title varchar(5) first;
describe employee; -- this is for comment
describe employee;
alter table employee change column location address varchar(35);
alter table employee modify FullName varchar(35);
update employee set address = "thane";
select * from employee;
update employee set address ="dombivli"
where department = "IT";
update employee SET TITLE="MR." where gender="male";
update employee SET TITLE="MRs." where gender="female";
 update employee set bonus = salary*0.05;
 select * from employee;
 
 
 
 
 
 use T388;
 create table kisan_info
 (ID int unique not null,
 name varchar(50) unique not null,
 age int check (age>=18),
 email_ID varchar (40) default "dummy@gmail.com"
 );
 describe kisan_info;
 insert into kisan_info
 values
 (101,"alisha",16,default);
 
 select * from kisan_info;
 truncate kisan_info;
 use T388;
 create table kisan_info
 (ID int unique not null,
 name varchar(50) unique not null,
 age int check (age>=18),
 email_ID varchar (40) default "dummy@gmail.com"
 );
 describe kisan_info;
 insert into kisan_info
 values
 (101,"alisha",16,default);
 
 select * from kisan_info;
 alter table kisan_info modify column age int check (age>=18);
 drop table kisan_info;
  use T388;
 create table kisan_info
 (ID int unique not null,
 name varchar(50) unique not null,
 age int check (age>=18),
 email_ID varchar (40) default "dummy@gmail.com"
 );
 describe kisan_info;
 insert into kisan_info
 values
 (101,"alisha",26,default);
  insert into kisan_info
 values
 (103,"omii",33, "omii@gmail.com");
 
 select * from kisan_info;
 alter table kisan_info modify age int check (age>=20);
 
 
 select distinct Department from employee;
 select distinct gender from employee;
 
 
 
 
 select * from employee
 where Department ="It"  or Department ="finance";
 
 select * from employee
 where Department in ("it","finance");
 
 
 select * from employee
 order by FullName;
 
 select * from employee order by age desc;
 select * from employee order by age asc;
 select * from employee where Gender ="male" order by FullName;
 
 -- W G H O
 -- WHERE , GROUP BY -[HAVING] , ORDER BY
 
 select department,count(employeeId) from employee group by Department;
 select Gender,count(employeeId) from employee group by Gender;
 select department,sum(salary) employee group by Department;
 select department,avg(salary) from employee group by Department;
 select department,avg(salary),sum(salary) from employee group by Department;
 
 select department,avg(salary) as avg_salary, sum(salary) as Total_salary from employee group by Department;
 select avg(salary) from employee;

select department,count(Department) from employee group by Department;
 select Department,count(gendar) from employee group by Department;
 select department, avg(age),count(*) from employee group by Department having avg(age) <27;
 select department, avg(age),count(*) from employee group by Department ;

-- Having clause ( along with group by clause)


CREATE TABLE Projects (


 ProjectId INT PRIMARY KEY AUTO_INCREMENT,


   
ProjectName VARCHAR(200) NOT NULL,


 EmployeeId INT,


   
StartDate DATETIME,


   
EndDate DATETIME


);

INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),


(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),

(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),

(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),

(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),

(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),

(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),

(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),


(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select *, datediff(enddate, startdate)as duration from projects;
select * from projects where datediff(enddate, startdate)=45;
select now();
alter table projects add duration int;
select * from projects ;
update projects set duration = datediff(enddate,startdate);
select duration , count(*) from projects group by duration;
select duration , count(*) from projects group by duration having count(*)>=2;
select duration , count(*) from projects 
where duration>=20 
group by duration
having count(*)>=2
order by duration desc;

select * from employee order by EmployeeId desc limit 5;
select * from employee limit 3,5;


