IF criteria
begin
--actions to carry out
end
else
begin
--actions to carry out
end



while criteria
begin
--do some actions
end


declare @x int, @result int
set @x =1
while @x <=20
begin
exec @result = spreturnvalue @x
if @result =1
begin
select * from tblcontacts where contactid=@x
end
set @x = @x +1
end
