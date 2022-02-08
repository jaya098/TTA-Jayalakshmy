CREATE DATABASE employee_database;

USE employee_database;

CREATE TABLE employee(
Employee_ID INT NOT NULL PRIMARY KEY, 
EmployeeName VARCHAR(100),
Address VARCHAR(100), 
City VARCHAR(80),	
PostalCode VARCHAR(10),
Country VARCHAR(40)
);

explain employee_database;

create table department(
Employee_ID INT NOT NULL PRIMARY KEY,
EmployeeName VARCHAR(100),
LineManager VARCHAR(100),
DepartmentManager VARCHAR(100),
Salary INT
);

explain department;

insert into employee values
(3569, 'Jane Doe', '5, Greet Street', 'Ruislip','HA4 0KK','UK'),
(7893, 'Bill Re', '45, Queens drive', 'Wembley','HA9 0K5','UK'),
(3304, 'Jaya Sivasankar', '10, White Lane', 'Pinner','HA3 09H','UK'),
(1298, 'Tina Roy', '98, Brackenbridge Road', 'North Harrow','HA2 H11','UK'),
(8745, 'Maya Farmer', '12, Torby Road', 'Northolt','HA6 9KE','UK'),
(5664, 'Greg Hunter', '55, Longdrive Road', 'Greenford','HA1 JR4','UK');

select * from employee;
select * from employee order by City;

insert into department values
(3569, 'Jane Doe', 'Jack Dallas', 'Joe Cullings',45000),
(7893, 'Bill Re', 'Kristy McDonald', 'Joe Cullings',43000),
(3304, 'Jaya Sivasankar', 'Kristy McDonald', 'Joe Cullings',50000),
(1298, 'Tina Roy', 'Jack Dallas', 'Joe Cullings',56000),
(8745, 'Maya Farmer', 'Jack Dallas', 'Joe Cullings',50000),
(5664, 'Greg Hunter', 'Kristy McDonald', 'Joe Cullings',62000);

select * from deparment;
select * from department order by Salary;
update department set salary=50000 where Employee_id = 7893;
select * from department;
select * from employee;
update employee set City = 'Ealing' where Employee_id = 5664;
select * from employee;

delete from department where Employee_id = 1298;

select employee.Employee_id, EmployeeName, City from employee 
inner join department where employee.Employee_id = department.Employee_id;	

select * from employee 
left join department on employee.Employee_id = department.Employee_id;	

update department set salary = 48000 where EmployeeName = 'Jane Doe' and Employee_id = 3569;

insert into department values (1298, 'Tina Roy', 'Jack Dallas', 'Joe Cullings',57000);

select * from department where Salary in (43000, 56000);

select * from department order by Salary asc;

select * from department where Salary >= 50000 and Salary <= 80000;
