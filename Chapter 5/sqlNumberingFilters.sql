--
select 
row_number() over(order by contractvalue desc, contractsigndate desc) as RowID,
* from tblcontracts


select 
rank() over(order by contractvalue desc, contractsigndate desc) as Ranking,
* from tblcontracts


