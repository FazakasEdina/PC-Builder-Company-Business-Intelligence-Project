-- 1.	A FactSales Tablara kimutatas az ar es darabszam szerint, a datum hierarchiara lebontva
SELECT {[Measures].[Amount],
	[Measures].[Price - Fact Sales]} ON COLUMNS, 
NON EMPTY {[Dim Date].[Hierarchy].[Year And Month].allmembers} ON ROWS 
FROM [PC Builder Company DM]

-- 2.	A FactAssembly bol a komponensek ara-ra raktunk kimutatast, a komponens hierarchia es gyarto szerint
SELECT {[Measures].[Price]} ON COLUMNS, 
{[Dim Components].[Hierarchy].[Category Name] 
* [Dim Manufacturers].[BK Manifacturers].[BK Manifacturers]} ON ROWS 
FROM [PC Builder Company DM]

-- 3.	A FactSales ar es darabszam szerint, az eladas celja es a vevo szerint kimutatas
SELECT NON EMPTY {[Measures].[Price - Fact Sales], [Measures].[Amount]} ON COLUMNS,
NON EMPTY {[Dim Purpose Of Sale].[Puprose Name].[Puprose Name].members
* [Dim Customers].[Person Or Company].[Person Or Company]
* [Dim Customers].[Name].allmembers} ON ROWS
FROM [PC Builder Company DM]

-- 4.	A FactSales darabszam eladasra kimutatas, az eladas helye es eladas eve szerint kimutatva
SELECT {[Measures].[Amount]} ON COLUMNS, 
NON EMPTY {[Dim Locations].[Hierarchy].[City].allmembers
* [Dim Date].[Year].allmembers} ON ROWS
FROM [PC Builder Company DM]

-- 5.	A komponensekre kimutatas, mikor jelent meg, milyen kategoria, mikor vettuk es hanyat
SELECT {[Measures].[Price]} ON COLUMNS,
NON EMPTY {[Dim Components].[Category Name].[Category Name].allmembers
* [Dim Components].[Amount].[Amount].allmembers 
* [Dim Components].[Launch Year].[Launch Year].allmembers 
* [Dim Components].[BK Components].[BK Components].allmembers} ON ROWS 
FROM [PC Builder Company DM]

-- 6.	Kimatats a vett darabszamra, ahol a vevo egy ceg
SELECT {[Measures].[Amount]} ON COLUMNS,
NON EMPTY {[Dim Customers].[Name].[Name].allmembers 
* [Dim Date].[Year].[Year]} ON ROWS
FROM [PC Builder Company DM]
WHERE ([Dim Customers].[Person Or Company].[Person Or Company].&[True])

-- 7.	A Gaming tipusu gepekre kimutatas
SELECT NON EMPTY {[Measures].[Price - Fact Sales]} ON COLUMNS,
NON EMPTY {[Dim Date].[Year].[Year].allmembers * [Dim Computers].[Created].[Created].allmembers
* [Dim Computers].[BK Computers].[BK Computers].allmembers
* [Dim Computers].[Warrantee].[Warrantee].allmembers} ON ROWS
FROM [PC Builder Company DM]
WHERE [Dim Purpose Of Sale].[Puprose Name].&[Gaming]

-- 8.	Helyseg hierarchia es a szemelyek osszekotese, hol hanyan vasaroltak
SELECT {[Measures].[Fact Sales Count]} ON COLUMNS,
NON EMPTY {[Dim Locations].[Hierarchy].[City].allmembers
* [Dim Customers].[Name].allmembers} ON ROWS 
FROM [PC Builder Company DM]


--- 9.	Eladas celja evekre lebontva, hanyat vasaroltak
SELECT {[Measures].[Fact Sales Count]} ON COLUMNS,
NON EMPTY {[Dim Purpose Of Sale].[Puprose Name].[Puprose Name].allmembers
* [Dim Date].[Year].[Year].ALLMEMBERS} ON ROWS 
FROM [PC Builder Company DM]

-- 10.	Melyik gyartotol vettunk tobb komponenst evenkent
SELECT {[Measures].[Fact Assembly Count]} ON COLUMNS,
NON EMPTY {[Dim Manufacturers].[BK Manifacturers].[BK Manifacturers].allmembers 
* [Dim Date].[Year].[Year].ALLMEMBERS} ON ROWS
FROM [PC Builder Company DM] 