/* create new column */
alter table Customer add Gender varchar(10), City varchar(50)
alter table Customer add Semester nvarchar(10)

/* updating table's value */
update Customer set Gender = 'Male', City = 'Rawalpindi'
update Customer set City = 'Islamabad' where CustomerName like ('%ali%')
update Customer set Semester = '4th' where CustomerName = 'Hamza Raheem'

/* delete the record from table */
delete from Customer where CustomerName = 'Liaqat Ali Khan'

/* delete column from table */
alter table Customer drop column Semester

/* delete all the records in the table */
truncate table Customer

/* delete the whole table */
drop table Customer

/* Selecting Data */
SELECT * FROM dbo.Customer


