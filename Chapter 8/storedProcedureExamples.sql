use terra
go

create proc dbo.spOutputParamTest
@contactid int =null,
@age float output
as
set nocount on
if @contactid is not null
begin
set @age = (select convert(float,(getdate()-dateofbirth))/365.25 from tblcontacts where contactid=@contactid)

end
--

declare @thisage float
execute spOutputParamTest @contactid=46, @age=@thisage output
print @thisage

--

create proc dbo.spReturnValue
@contactid int =null
as
set nocount on
if @contactid is not null
begin
declare @countContact int
set @countContact =(select count(*) from tblcontacts where contactid=@contactid )

return @countContact
end

declare @retval int
exec @retval =   spReturnValue 15
print @retval

--

create proc dbo.spOutputRecordset
@city varchar(50) =null
as
set nocount on
if @city is not null
begin
select * from tblcontacts where town=@city

end

--

exec spOutputRecordset 'las vegas'