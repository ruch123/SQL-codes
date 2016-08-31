--Create a Temporary Table
create table #sample(
contactid int,
firstName varchar(100)
lastName varchar(100)
displayName varchar(150),
dob smalldatetime
)

select * from #sample