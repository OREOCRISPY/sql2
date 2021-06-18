--11
select COUNT(*)as TheCount, avg(ListPrice)as AvgPrice
from Production.Product
where Color is not null and Class is not null
group by Color,Class

--12
select C.Name Country,S.Name Province
from Person.CountryRegion C inner join person.StateProvince S on C.CountryRegionCode=S.CountryRegionCode
Order by C.Name

--13
select C.Name Country,S.Name Province
from Person.CountryRegion C inner join person.StateProvince S on C.CountryRegionCode=S.CountryRegionCode
where C.Name='Germany' or C.Name='Canada'
Order by C.Name