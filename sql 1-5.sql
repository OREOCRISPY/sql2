--1
select count(distinct ProductID) 
from Production.Product

--2
select count(*)
from Production.Product
where ProductSubcategoryID is not null

--3
select	ProductSubcategoryID,count(*) as CountedProducts
from Production.Product
where ProductSubcategoryID is not null
group by ProductSubcategoryID

--4
select count(*)
from Production.Product
where ProductSubcategoryID is null

--5
select sum(Quantity)
from Production.ProductInventory 