

select * from tblcontacts
print @@rowcount

select * from tblcontacts where town='leeds'
print @@rowcount

update tblcontacts set line2='No Line2' where town='Leeds' and line2 is null
print @@rowcount

