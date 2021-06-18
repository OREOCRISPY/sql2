--19
select distinct CompanyName
from Orders O inner join Customers C on O.CustomerID=C.CustomerID
where OrderDate> '1998-01-01'

--20
select CompanyName
from Orders O inner join Customers C on O.CustomerID=C.CustomerID
where O.OrderDate in (select top 1 OrderDate from Orders order by OrderDate Desc)

--21
Select CompanyName,Sum(D.Quantity)
from Customers C inner join Orders O on O.CustomerID=C.CustomerID inner join [Order Details] D on O.OrderID=D.OrderID
group by CompanyName

--22
select CustomerID,Sum(D.Quantity)as 'count'
from Orders O inner join [Order Details] D on O.OrderID=D.OrderID
group by O.CustomerID
having sum(D.Quantity)>100

--23
select SP.CompanyName as 'Supplier Company Name',SH.CompanyName as 'Shipping Company Name'
from Suppliers SP cross join Shippers SH