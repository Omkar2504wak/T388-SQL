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





