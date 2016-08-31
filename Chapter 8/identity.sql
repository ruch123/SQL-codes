insert into tblcontacts(fn,sn,house,street,town,region,[zip-postcode],
	country,telephone,cell,email)
values('Ann','Welcome','42','High Street','Leeds','West Yorkshire','LS7 7YY',
	'UK','555 9854', '555 6412','ann@welcome.com')
	
print @@identity
		