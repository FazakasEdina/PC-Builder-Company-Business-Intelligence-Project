--DESKTOP-9OG452E\SQLEXPRESS

CREATE LOGIN [NT SERVICE\MSSQLServerOLAPService] FROM WINDOWS WITH
DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO

USE PC_Builder_Company_DM
GO
/****** Object: User [OlapService] Script Date: 25/04/2022 11:34:53 ******/
CREATE USER [OlapService] FOR LOGIN [NT SERVICE\MSSQLServerOLAPService] WITH
DEFAULT_SCHEMA=[dbo]
GO

GRANT SELECT ON DimDate TO OlapService
GRANT SELECT ON DimComponents TO OlapService
GRANT SELECT ON DimComputers TO OlapService
GRANT SELECT ON DimCustomers TO OlapService
GRANT SELECT ON DimLocations TO OlapService
GRANT SELECT ON DimManufacturers TO OlapService
GRANT SELECT ON DimPurposeOfSale TO OlapService
GRANT SELECT ON FactAssembly TO OlapService
GRANT SELECT ON FactSales TO OlapService