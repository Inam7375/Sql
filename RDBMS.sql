use test1
-- Creating RDBMS  parent table
create table Employees
(
	Emp_ID int primary key identity,
	Emp_Name varchar(50),
	Emp_Designation varchar(50)
)
--Creating table with Custom primary key
create table Employees
(
	Emp_ID int primary key identity (1000, 2)
	/*(value1 = starting point, value2 = increment)*/
)
select * from Employees

--Creating RDBMS child table
create table Department
(
	Dep_ID int primary key identity,
	Dep_Name varchar(20),
	Emp_Reg_ID int foreign key references Employees(EMp_ID)
)

insert into Department values('Development', 1), ('Development', 4) 

--joins
select Department.Dep_Name, .Department.Emp_Reg_ID, Employees.Emp_Designation
from Department inner join Employees
on Department.Emp_Reg_ID = Employees.Emp_ID

select Department.Dep_Name, .Department.Emp_Reg_ID, Employees.Emp_Designation
from Department right join Employees
on Department.Emp_Reg_ID = Employees.Emp_ID

select Department.Dep_Name, .Department.Emp_Reg_ID, Employees.Emp_Designation
from Department left join Employees
on Department.Emp_Reg_ID = Employees.Emp_ID

/* Selecting table */
Select * from Department

