
create function dbo.Age(@dob smalldatetime)
	returns int
as
begin
	declare @age int
	set @age = floor(convert(float,getdate() - @dob)/365.25)
	return @age
end
		