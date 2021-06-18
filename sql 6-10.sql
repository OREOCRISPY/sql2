--6
select ProductID,sum(ProductID)as TheSum
from Production.ProductInventory
where LocationID=40 and Quantity<100
group by ProductID

--7
select Shelf,ProductID,sum(Quantity)as TheSum
from Production.ProductInventory
where LocationID=40 and Quantity<100
group by ProductID,Shelf

--8
select Avg(Quantity)
from Production.ProductInventory 
where LocationID=10

--9
select ProductID,Shelf,Avg(Quantity)as TheAvg
from Production.ProductInventory 
group by Shelf,ProductID

--10
select ProductID,Shelf,Avg(Quantity)as TheAvg
from Production.ProductInventory 
where Shelf !='N/A'
group by Shelf,ProductID