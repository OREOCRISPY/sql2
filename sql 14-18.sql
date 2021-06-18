--14
select Distinct P.ProductID,P.ProductName
from Orders O inner join [Order Details] D on O.OrderID=D.OrderID inner join Products P on D.ProductID=P.ProductID
where DATEDIFF(year,O.OrderDate,GETDATE())<=25

--15
select top 5 ShipPostalCode,sum(Quantity) as num
from Orders O inner join [Order Details] D on O.OrderID=D.OrderID
group by ShipPostalCode
order by num DESC
--16
select top 5 ShipPostalCode,sum(Quantity) as num
from Orders O inner join [Order Details] D on O.OrderID=D.OrderID
where DATEDIFF(year,OrderDate,GETDATE())<=20
group by ShipPostalCode
Order by num

--17
select City,COUNT(*)as NumOfCustomer
from Customers
group by City

--18
select City,COUNT(*)as NumOfCustomer
from Customers
group by City
having COUNT(*)>10
