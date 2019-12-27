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

select Department.Dep_Name, .Department.Emp_Reg_ID, Employees.Emp_Designation
from Department full join Employees
on Department.Emp_Reg_ID = Employees.Emp_ID


/* Selecting table */
Select * from Department

drop table Department

--one to many relation ship
create table Department(
						Dep_ID int primary key identity(1,1),
					    Dep_Name varchar(50));
insert into Department values('Computer Science'), ('BBA'), ('Applied Physics')					 


create table Semester(
						Sem_ID int primary key identity(1,1),
					    Sem_Num nvarchar(10),
						Dep_ID int foreign key references Department(Dep_ID));
insert into Semester values('5th', 1), ('4th', 2), ('2nd', 3)					 


create table Section(
						Sec_ID int primary key identity,
					    Sec_Name varchar(2),
						Sem_ID int foreign key references Semester(Sem_ID));
insert into Section values('B', 1), ('C', 2), ('A', 3)					 

select * from Department
select * from Semester
select * from Section


create table Student(
						Std_ID int primary key identity(1,1),
						Std_Name varchar(50),
						Std_F_Name varchar(50),
						Std_age int,
						Dep_ID int foreign key references Department(Dep_ID),
						Sem_ID int foreign key references Semester(Sem_ID),
						Sec_ID int foreign key references Section(Sec_ID))



insert into Student values (
								'Inam ul Haq', 
								'Waqar Ahmed Bhutta',
								19,
								1,
								1,
								1),
							(
								'Rahat Shah', 
								'Shah Jee',
								22,
								2,
								2,
								2),
							(
								'Umar Meer', 
								'Matloob Sahb',
								19,
								3,
								3,
								3)

select Student.Std_Name,
	   Student.Std_F_Name,
	   Student.Std_age,
	   Department.Dep_Name,
	   Semester.Sem_Num,
	   Section.Sec_Name
from Student
inner join Department
on Student.Dep_ID = Department.Dep_ID
inner join Semester
on Student.Std_ID = Semester.Sem_ID
inner join Section
on Student.Sec_ID = Section.Sec_ID