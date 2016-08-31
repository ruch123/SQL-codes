select *
,(select count(paymentid) from tblpayments where paymentcontract=contractid) as Payments
from tblcontracts


--

select *
,(select sum(contractvalue) from tblcontracts c2 where c1.contractclient=c2.contractclient) as ClientTotal
,(select sum(contractvalue) from tblcontracts c2 where year(c1.contractsigndate)=year(c2.contractsigndate)) as AnnualTotal
from tblcontracts c1


--
