USE [master]
GO
/****** Object:  Database [PC_Builder_Company]    Script Date: 4/9/2022 6:47:52 PM ******/
CREATE DATABASE [PC_Builder_Company]
GO
USE [PC_Builder_Company]
GO
/****** Object:  Table [dbo].[Assembly]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assembly](
	[CopmuterID] [int] NOT NULL,
	[PartID] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Of_Parts]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Of_Parts](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category_Of_Parts] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Computer_Parts]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computer_Parts](
	[PartID] [bigint] IDENTITY(1,1) NOT NULL,
	[ManufactureYear] [int] NULL,
	[Seria] [varchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Computer_Parts] PRIMARY KEY CLUSTERED 
(
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Computer_Parts] UNIQUE NONCLUSTERED 
(
	[Seria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Computers]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computers](
	[ComputerID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nchar](500) NULL,
	[Created] [date] NOT NULL,
	[Guarantee] [int] NOT NULL,
	[PC_Name] [varchar](20) NULL,
 CONSTRAINT [PK_Computers] PRIMARY KEY CLUSTERED 
(
	[ComputerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Law] [bit] NOT NULL,
	[LocationID] [int] NOT NULL,
	[CNP_or_CodeFiscal] [varchar](13) NULL,
	[EffectiveDate] [datetime] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[Town] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[FactoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[FactoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases](
	[PurchaseID] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Price] [float] NOT NULL,
	[Amount] [int] NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[ComputerPartID] [bigint] NOT NULL,
 CONSTRAINT [PK_Purchases] PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalePurpose]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalePurpose](
	[ScopeID] [int] IDENTITY(1,1) NOT NULL,
	[Definition] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SalePurpose] PRIMARY KEY CLUSTERED 
(
	[ScopeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 4/9/2022 6:47:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Amount] [int] NOT NULL,
	[ScopeID] [int] NOT NULL,
	[ComputerID] [int] NOT NULL,
	[CustomerID] [bigint] NOT NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Assembly]  WITH CHECK ADD  CONSTRAINT [FK_Computer] FOREIGN KEY([CopmuterID])
REFERENCES [dbo].[Computers] ([ComputerID])
GO
ALTER TABLE [dbo].[Assembly] CHECK CONSTRAINT [FK_Computer]
GO
ALTER TABLE [dbo].[Assembly]  WITH CHECK ADD  CONSTRAINT [FK_Part] FOREIGN KEY([PartID])
REFERENCES [dbo].[Computer_Parts] ([PartID])
GO
ALTER TABLE [dbo].[Assembly] CHECK CONSTRAINT [FK_Part]
GO
ALTER TABLE [dbo].[Computer_Parts]  WITH CHECK ADD  CONSTRAINT [FK_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category_Of_Parts] ([CategoryID])
GO
ALTER TABLE [dbo].[Computer_Parts] CHECK CONSTRAINT [FK_Category]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Location]
GO
ALTER TABLE [dbo].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturers] ([FactoryID])
GO
ALTER TABLE [dbo].[Purchases] CHECK CONSTRAINT [FK_Manufacturer]
GO
ALTER TABLE [dbo].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Parts] FOREIGN KEY([ComputerPartID])
REFERENCES [dbo].[Computer_Parts] ([PartID])
GO
ALTER TABLE [dbo].[Purchases] CHECK CONSTRAINT [FK_Parts]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Purpose] FOREIGN KEY([ScopeID])
REFERENCES [dbo].[SalePurpose] ([ScopeID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Purpose]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Computers] FOREIGN KEY([ComputerID])
REFERENCES [dbo].[Computers] ([ComputerID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Computers]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Customers]
GO
USE [master]
GO
ALTER DATABASE [PC_Builder_Company] SET  READ_WRITE 
GO
