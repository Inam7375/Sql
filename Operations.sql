/*Keywords
between
in
arithematic ops'
like
order by asc|desc*/

select * from Customers
select * from Customers where Customer_Bill between 4000 and 10000
select * from Customers where Customer_Bill in (2000,2500)
select * from Customers where Customer_Name like ('_a%')
select * from CUstomers order by Customer_Bill
update Customers set New_Customer = default

select * from Customers

--Create view(all table operations can be applied to a view)
create view existingUser
as
select Customer_Name, Customer_Bill
from Customers
where New_Customer = 'yes'

select * from existingUser

--Create procedure using procedure/proc keyword
create proc insertRec(
						@Customer_Name varchar(50),
						@Customer_Bill int,
						@New_Customer varchar(5))
as
begin
insert into Customers values(@Customer_Name, @Customer_Bill, @New_Customer)
end


create proc updateRec(
						@Id int,
						@customerName varchar(50),
						@customerBill int,
						@newCustomer varchar(5))
as
begin
update Customers set Customer_Name = @customerName, Customer_Bill = @customerBill, New_Customer = @newCustomer
where Customer_ID = @Id
end


create proc delRec(@Id int)
as
begin
delete from Customers where Customer_ID = @Id
end

exec insertRec 'Hamza Raheem', 8700, 'yes'
exec updateRec 8, 'Naeem Bukhari', 7700, 'no'
exec delRec 7

select * from Customers