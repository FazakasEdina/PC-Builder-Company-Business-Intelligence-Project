USE [master]
GO
/****** Object:  Database [PC_Builder_Company_SA]    Script Date: 4/9/2022 7:03:40 PM ******/
CREATE DATABASE [PC_Builder_Company_SA]
GO
USE [PC_Builder_Company_SA]
GO
/****** Object:  Table [dbo].[Assembly_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assembly_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[ComputerID] [nvarchar](512) NULL,
	[ComponentID] [nvarchar](512) NULL,
 CONSTRAINT [PK_Assembly_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assembly_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assembly_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[ComputerID] [nvarchar](512) NULL,
	[ComponentID] [nvarchar](512) NULL,
 CONSTRAINT [PK_Assembly_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Name] [nvarchar](512) NULL,
 CONSTRAINT [PK_Categories_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Name] [nvarchar](512) NULL,
 CONSTRAINT [PK_Categories_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Components_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Components_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Launch_year] [nvarchar](512) NULL,
	[Seria] [nvarchar](512) NULL,
	[CategoryID] [nvarchar](512) NULL,
 CONSTRAINT [PK_Components_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Components_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Components_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Launch_year] [nvarchar](512) NULL,
	[Seria] [nvarchar](512) NULL,
	[CategoryID] [nvarchar](512) NULL,
 CONSTRAINT [PK_Components_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Computers_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computers_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Name] [nvarchar](512) NULL,
	[Warrantee] [nvarchar](512) NULL,
	[Description] [nvarchar](512) NULL,
	[Created] [nvarchar](512) NULL,
 CONSTRAINT [PK_Computers_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Computers_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computers_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Name] [nvarchar](512) NULL,
	[Warrantee] [nvarchar](512) NULL,
	[Description] [nvarchar](512) NULL,
	[Created] [nvarchar](512) NULL,
 CONSTRAINT [PK_Computers_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Name] [nvarchar](512) NULL,
	[Email] [nvarchar](512) NULL,
	[Phone] [nvarchar](512) NULL,
	[Person_or_Company] [nvarchar](512) NULL,
	[LocationID] [nvarchar](512) NULL,
	[CNP_or_CodeFiscal] [nvarchar](512) NULL,
	[EffectiveDate] [nvarchar](521) NULL,
 CONSTRAINT [PK_Customers_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Name] [nvarchar](512) NULL,
	[Email] [nvarchar](512) NULL,
	[Phone] [nvarchar](512) NULL,
	[Person_or_Company] [nvarchar](512) NULL,
	[LocationID] [nvarchar](512) NULL,
	[CNP_or_CodeFiscal] [nvarchar](512) NULL,
	[EffectiveDate] [nvarchar](521) NULL,
 CONSTRAINT [PK_Customers_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Country] [nvarchar](512) NULL,
	[City] [nvarchar](512) NULL,
	[Address] [nvarchar](512) NULL,
 CONSTRAINT [PK_Locations_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Country] [nvarchar](512) NULL,
	[City] [nvarchar](512) NULL,
	[Address] [nvarchar](512) NULL,
 CONSTRAINT [PK_Locations_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturers_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Name] [nvarchar](512) NULL,
 CONSTRAINT [PK_Manufacturers_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturers_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Name] [nvarchar](512) NULL,
 CONSTRAINT [PK_Manufacturers_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Date] [nvarchar](512) NULL,
	[Price] [nvarchar](512) NULL,
	[Amount] [nvarchar](512) NULL,
	[ManufacturerID] [nvarchar](512) NULL,
	[ComponentID] [nvarchar](512) NULL,
 CONSTRAINT [PK_Purchases_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Date] [nvarchar](512) NULL,
	[Price] [nvarchar](512) NULL,
	[Amount] [nvarchar](512) NULL,
	[ManufacturerID] [nvarchar](512) NULL,
	[ComponentID] [nvarchar](512) NULL,
 CONSTRAINT [PK_Purchases_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purpose_of_sale_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purpose_of_sale_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Definition] [nvarchar](512) NULL,
 CONSTRAINT [PK_Purpose_of_sale_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purpose_of_sale_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purpose_of_sale_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Definition] [nvarchar](512) NULL,
 CONSTRAINT [PK_Purpose_of_sale_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_MSSQL]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_MSSQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Date] [nvarchar](512) NULL,
	[Amount] [nvarchar](512) NULL,
	[PurposeID] [nvarchar](512) NULL,
	[CustomerID] [nvarchar](512) NULL,
	[ComputerID] [nvarchar](512) NULL,
	[Price] [nvarchar](512) NULL,
 CONSTRAINT [PK_Sales_MSSQL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Oracle]    Script Date: 4/9/2022 7:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Oracle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[LOAD_DATE] [datetime] NOT NULL,
	[Date] [nvarchar](512) NULL,
	[Amount] [nvarchar](512) NULL,
	[PurposeID] [nvarchar](512) NULL,
	[CustomerID] [nvarchar](512) NULL,
	[ComputerID] [nvarchar](512) NULL,
	[Price] [nvarchar](512) NULL,
 CONSTRAINT [PK_Sales_Oracle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PC_Builder_Company_SA] SET  READ_WRITE 
GO
