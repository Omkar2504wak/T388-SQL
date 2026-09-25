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
select distinct department from employee;
select distinct Gender from employee;
select distinct age from employee;
 select * from projects;
 select * from projects where EmployeeId is null;-- use to show null values
  select * from projects where EmployeeId is not null; -- use to show all values without null
update projects set employeeid = 1003 where projectId =6;
-- auto increment 

-- IN , between and like
select * from employee where age between 25 and 28;
select * from employee where EmployeeId between 1003 and 1007;
select * from employee where EmployeeId in (1003,1005,1007);
select * from employee where 
age in (23,28)
and Department = "IT"
and EmployeeId IN (1008,1001);
 -- like operator imp topic 
  select * from employee where FullName like "%M%";
  select * from employee where FullName like "__K%";
  select * from employee where FullName like "M%";
  select * from employee where FullName like "%M__";
   select * from simple;
     select * from employee where FullName like "%M__" -- use fullname in excel
   select * from simple where name like "a%";
   select * from simple where name like "a%t";

-- BUILT  SQL FUNCTION 
select avg(Salary) from employee;
select sum(Salary) from employee;
select max(Salary) from employee;
select min(Salary) from employee;
select count(*) from employee;
select count(*) as total_EMP,
avg(Salary) AS AVERAGE 
,sum(salary) as total_salary from employee;

-- math function 
-- absolute 
select abs (-35);
select abs (6*(-7));
select datediff(startdate, enddate) as duration from projects;
-- mod 
select mod(12,7); -- return the remainder values

select ceil(33.8);
select floor(33.8);

-- TRUNCATE (X,D)
select truncate(123456.8765432, 1);
select truncate(123456.8765432, 0);
select truncate(123456.8765432, -0);

-- EXPONEN FUNCTION

select power(2,4);
select pow(2,4);

select sqrt(196);
select *, sqrt(salary) from employee;
 -- concat
 select concat("Good"," ","morning") as remarks;
 
 select *, concat(fullname,"@itvedant.com") as email from employee;
  
-- lower & uppar
select *, lower(fullname) as newname, 
upper(fullname) as CAPITALNAME from employee;
select* from employee;
alter table employee add EMAIL varchar(50);
update employee set EMAIL = concat(fullname, "@gmail.com");
-- replace
select replace("Hello Everyone, Goond Night", "Night","morning") as Statement;
select fullname, replace(fullname, "Jones","patil") as changed from employee;

-- reverse
select fullname, replace(fullname, "Jones","patil") as changed,
reverse (fullname) 
from employee;
select fullname , length(fullname)
from employee;

-- substring
select substring("Maharashtra",5,3);
-- trimmer left & right
select fullname , length(fullname) as actual_Lenght
,ltrim(fullname) as lefttrim, length(ltrim(fullname)) as LTRIM_Lenght,
 rtrim(fullname) as righttrim, length(rtrim(fullname)) as RTRIM_Lenght from trimmer;
 
 select fullname , length(fullname) as actual_Lenght
,ltrim(fullname) as lefttrim, length(ltrim(fullname)) as LTRIM_Lenght,
 rtrim(fullname) as righttrim, length(rtrim(fullname)) as RTRIM_Lenght, 
 trim(fullname) as both_sides_trim, length(rtrim(fullname)) as All_Trim_Lenght
 from trimmer;
 
 -- sub quries imp for sql
 select * from employee;
 select age from employee where EmployeeId = 1002;
 select age from employee where FullName = "Mary Smith";
 
 select* from employee
 where age =(select age from employee where FullName = "Mary Smith");
 
 select * from employee
 where salary =(select salary from employee where FullName = "John doe");
 
 select * from employee
 where Department =(select department from employee where FullName = "John doe");
 
select max(salary) from employee;  -- 1 highest salary
 select max(salary) from employee where salary <(select max(salary) from employee); -- 2nd  highest salary
 
 -- 3 rd highest salary
  select max(salary) from employee 
  where salary <(select max(salary) from employee where salary <(select max(salary) from employee));
  
  -- multipal row Subquery
  select * from employee;
  select age from  employee where EmployeeId in (1002,1003);
  
  select * from employee
  where age in (select age from  employee where EmployeeId in (1002,1003));
  
   select * from salary where
   salary >any(select Salary from employee where EmployeeId between 1001 and 1003);
   
   select * from employee where
   salary <all(select Salary from employee where EmployeeId between 1001 and 1003);
   
-- join  subquery
 select * from Salary_t388;
  select * from Name_t388;
select Salary_t388.id, Name, Salary from Name_t388 
join 
 Salary_t388 on Salary_t388.id = Name_t388.id;
 
 -- left join
 select salary_t388.id, name, salary from salary_t388 left join name_t388 on salary_t388.id = name_t388.id;
select name_t388.id, name, salary from name_t388 left join salary_t388 on name_t388.id = salary_t388.id;
  -- right join 
  select name_t388.id, name, salary from salary_t388 right join name_t388 on salary_t388.id = name_t388.id;
  select salary_t388.id, name, salary from name_t388 right join salary_t388 on name_t388.id = salary_t388.id;
