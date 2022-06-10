USE PC_Builder_Company_DM
GO

create view statistics_about_sales as
select ROUND(sales.Price, 1) as Price, sales.Amount, ROUND(sales.Price * sales.Amount, 1) as FinalPrice, cust.Name, cust.Person_or_Company, 
	purpose.PuproseName, comp.BK_Computers as ComputerName
from FactSales as sales
join DimCustomers as cust
on sales.SK_Customers = cust.SK_Customer
join DimPurposeOfSale as purpose
on purpose.SK_Purpose_of_sale = sales.SK_Purpose_of_sale
join DimComputers as comp
on comp.SK_Computers = sales.SK_Computers
GO

-- select * from statistics_about_sales

GO
-- 1. ranking
-- rank() hasznalata
-- Rangsoroljuk az eladott szamitogepeket az aruk szerint
select Name, Person_or_Company, PuproseName, Price, ComputerName,
	rank() over (order by Price desc) as ranking
from statistics_about_sales

-- dense_rank()
-- eladott darabszam szerint
select Name, Person_or_Company, PuproseName, Amount, ComputerName,
	dense_rank() over (order by Amount) as ranking
from statistics_about_sales

-- partician
-- az ossz ar ranksorolasa a eladas celja szerint particionalva
select ComputerName, PuproseName, FinalPrice,  
	rank() over (partition by PuproseName order by FinalPrice desc) as ranking
from statistics_about_sales

-- percent_rank(), cume_dist(), row_number()
-- ugyanaz a vasarolt darabszammal
select ComputerName, PuproseName, Amount,  
	percent_rank() over (partition by PuproseName order by Amount desc) as ranking
from statistics_about_sales

select ComputerName, PuproseName, Amount,  
	cume_dist() over (partition by PuproseName order by Amount desc) as ranking
from statistics_about_sales

select ComputerName, PuproseName, Amount,  
	row_number() over (partition by PuproseName order by Amount desc) as ranking
from statistics_about_sales

-- ntile(n)
-- 5 be osztjuk a eredeti arakat es az ar kategoriakat szamoljuk ki 
select ntile5, ROUND(avg(Price), 1)
from (select Name, Person_or_Company, PuproseName, Price, ComputerName,
	ntile(5) over (order by Price desc) as ntile5
from statistics_about_sales) t
group by ntile5
order by ntile5

-- 2. Windowing
-- bevetel novekedes az eladas celjai szerint nezve
select PuproseName, sum(FinalPrice)
	over (partition by PuproseName order by FinalPrice rows unbounded preceding) as RevenueGrowth
from statistics_about_sales

-- 3. Cube
-- a cegek altali vasarlasara vonatkozo statisztikak, hogy milyen celra vettek a szamitogepeket
select PuproseName, Name, round(avg(FinalPrice),2) as AvgFinalPrice
from statistics_about_sales
where Person_or_Company = 1
group by cube(PuproseName,Name)

-- rollup()
-- a cegek es szemelyek altal elkontott penz osszeg sztatisztikaja
select Person_or_Company, PuproseName, round(sum(FinalPrice), 0) as SumFinalPrice
from statistics_about_sales
group by rollup (Person_or_Company, PuproseName)

GO

drop view statistics_about_sales
