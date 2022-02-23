
select*from employees;
select ascii('A');
select char(65);

select charindex('a','ramayan');
select left('ramayan',3);
select right('ramayan',3);
select substring('ramayan',3,4);

select len('deepak');

select lower('RAKESH');
select upper('rakesh');

select len(Itrim(' mohit'));
select len(rtrim('mohit '));

select REPLACE('data','a','p');

select replicate('m',20);

select REVERSE('amit');

select first_name from employees;

declare @name varchar(100)
set @name='rakesh'
select
UPPER(left(@name,1))+SUBSTRING(@name,2,len(@name));

select*from employees where salary>12000;

creat database TM2DB;
use TM2DB


create table BCAStudents
(rollnumber int,name varchar(max), course varchar(max),fee money)

create table MBAStudents
(rollnumber int, name varchar(max),coursevarchar(max),fee money)

insert into BCAStudents values (1011,'deepak','BCA',12000),
(1012,'ajay','BCA',32000),
(1013,'rohit','BCA',32000),
(1014,'mayank','BCA'15000)
(1015,'sandeep','BCA',16000);

CREATE TABLE department (
department_id INT IDENTITY(1,1) PRIMARY KEY,
department_name VARCHAR (30) NOT NULL,
location_id INT DEFAULT NULL,
);

INSERT INTO departments(department_id,department_name,location_id)VALUES(1,'Administration',1700);
CREATE TABLE employees (
employee_id INT IDENTITY(1,1) PRIMARY KEY,
first_name VARCHAR (20) DEFAULT NULL,
last_name VARCHAR (25) NOT NULL,
email VARCHAR (100) N0T NULL,
phone_number VARCHAR (20) DEFAULT NULL,
hire_date DATE NOT NULL,
Job_id INT NOT NULL,
salary DECIMAL (8,2) NOT NULL,
manager_id INT DEFAULT NULL,
DEPARTMENT_id INT DEFAULT NULL,
department _id INT DEFAULT NULL,
FOREIGN KEY (JOB- id) REFERENCES Jobs (job_id ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (department_id) REFERENCES departments (department _id) ON DELETE CASCADE ON UPDATE CASCADE,     
FOREIGN KEY (manager_id) REFERENCES employees (employee _id)
);


