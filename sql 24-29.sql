--24
select P.ProductName,O.OrderDate
from Orders O left join [Order Details] D on O.OrderID=D.OrderID left join Products P on D.ProductID=P.ProductID
order by O.OrderDate

--25
Select E1.EmployeeID,E1.LastName,E1.FirstName,E2.EmployeeID,E2.LastName,E2.FirstName,E2.Title
from Employees E1 left join Employees E2 on E1.Title=E2.Title and E1.EmployeeID!=E2.EmployeeID
where E1.EmployeeID is not null and E2.EmployeeID is not null

--26
select *
from Employees
where EmployeeID in(select ReportsTo from Employees group by ReportsTo having count(*)>2)

--27
select City,CompanyName as Name,ContactName,'Customer' as Type
from Customers
Union
select City, CompanyName as Name,ContactName,'Supplier' as Type
from Suppliers

--28
select *
from T1 inner join T2 

--29
select *
from T1 left join T2