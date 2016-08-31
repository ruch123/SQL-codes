insert into tblcontacts(fn,sn,house,street,town,region,[zip-postcode],
	country,telephone,cell,email)
values('Ann','Welcome','42','High Street','Leeds','West Yorkshire','LS7 7YY',
	'UK','555 9854', '555 6412','ann@welcome.com')
	
print @@identity
		


create proc dbo.spInsertContactwithContract
@fn varchar(50) =null,
@sn varchar(50) =null,
@house varchar(250) =null,
@street varchar(250) =null,
@town varchar(250) =null,
@region varchar(250) =null,
@zip varchar(15) =null,
@country varchar(250) =null,
@telephone varchar(250) =null,
@cell varchar(250) =null,
@email varchar(250) =null,
@value float =null
as
set nocount on

insert into tblcontacts(fn,sn,house,street,town,region,[zip-postcode],
	country,telephone,cell,email)
values(@fn,@sn,@house,@street,@town,@region,@zip,
	@country,@telephone,@cell,@email)		

declare @newID int
set @newID = @@identity

insert into tblcontracts(contractclient, contractvalue, contractsigndate)
	values(	@newID, @value, getdate())
	