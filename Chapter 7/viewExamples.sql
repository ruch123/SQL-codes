use terra

--largest contract from each year
with data as
(
select 
rank() over(partition by contractyear order by contractvalue desc) as ranking,
* from tblcontracts
)
select * from data where ranking=1

--end

--top 10 clients of all time
select * from
(
select 
rank() over( order by sum(contractvalue) desc) as ranking,
contractclient
,sum(contractvalue) as Total from tblcontracts
group by contractclient
) as D
where d.ranking <=10

