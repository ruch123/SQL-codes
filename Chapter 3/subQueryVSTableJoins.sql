select * from tblcontacts co
inner join tblcontracts c
on co.contactid=c.contractclient

select * from tblcontacts 
where contactid in(select contractclient from tblcontracts)

select * from tblcontracts c 
inner join tblpayments p
on c.contractid=p.paymentcontract

select * from tblcontracts
where contractid in(select paymentcontract from tblpayments)



