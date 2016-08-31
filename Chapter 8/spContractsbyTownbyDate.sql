create proc dbo.spContractsbyTownbyDate
@startdate smalldatetime =null,
@endDate smalldatetime =null,
@city varchar(100) =null
as
set nocount on
if @startdate is not  null and @enddate is not null and @city is not null
begin
select * from tblcontacts c inner join tblcontracts co
on c.contactid=co.contractclient
where c.town=@city and co.contractsigndate between @startdate and @enddate

end
else
begin
return 0
end