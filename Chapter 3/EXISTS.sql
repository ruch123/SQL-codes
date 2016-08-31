select * from tblcontracts 
where exists
(
select * from tblcontacts  where region='teesside' 
)


select * from tblcontracts c1
where exists
(
select * from tblcontacts c2 where region='teesside' and c1.contractclient=c2.contactid
)



select * from tblcontracts c1
where contractclient in
(select contactid from tblcontacts c2 where region='teesside' )

