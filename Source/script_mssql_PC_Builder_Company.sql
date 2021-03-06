USE [master]
GO
/****** Object:  Database [PC_Builder_Company]    Script Date: 4/11/2022 6:05:04 PM ******/
CREATE DATABASE [PC_Builder_Company]
GO
USE [PC_Builder_Company]
GO
/****** Object:  Table [dbo].[Assembly]    Script Date: 4/11/2022 6:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assembly](
	[CopmuterID] [int] NOT NULL,
	[PartID] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Of_Parts]    Script Date: 4/11/2022 6:05:06 PM ******/
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
/****** Object:  Table [dbo].[Computer_Parts]    Script Date: 4/11/2022 6:05:06 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Computers]    Script Date: 4/11/2022 6:05:06 PM ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 4/11/2022 6:05:06 PM ******/
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
/****** Object:  Table [dbo].[Locations]    Script Date: 4/11/2022 6:05:06 PM ******/
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
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 4/11/2022 6:05:06 PM ******/
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
/****** Object:  Table [dbo].[Purchases]    Script Date: 4/11/2022 6:05:06 PM ******/
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
/****** Object:  Table [dbo].[SalePurpose]    Script Date: 4/11/2022 6:05:06 PM ******/
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
/****** Object:  Table [dbo].[Sales]    Script Date: 4/11/2022 6:05:06 PM ******/
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
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (1, 4)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (1, 9)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (1, 13)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (1, 15)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (1, 19)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (1, 25)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (1, 28)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (1, 30)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (2, 3)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (2, 7)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (2, 12)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (2, 17)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (2, 21)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (2, 24)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (2, 26)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (2, 29)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (3, 1)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (3, 6)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (3, 11)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (3, 14)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (3, 22)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (3, 23)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (3, 27)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (3, 29)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (4, 2)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (4, 7)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (4, 10)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (4, 14)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (4, 22)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (4, 24)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (4, 28)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (4, 30)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (5, 2)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (5, 8)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (5, 12)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (5, 14)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (5, 21)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (5, 24)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (5, 27)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (5, 30)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (6, 1)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (6, 6)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (6, 10)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (6, 16)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (6, 18)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (6, 23)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (6, 26)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (6, 29)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (7, 2)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (7, 8)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (7, 12)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (7, 15)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (7, 21)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (7, 24)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (7, 28)
INSERT [dbo].[Assembly] ([CopmuterID], [PartID]) VALUES (7, 30)
GO
SET IDENTITY_INSERT [dbo].[Category_Of_Parts] ON 

INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (1, N'Processors')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (2, N'Graphics Cards')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (3, N'Motherboards')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (4, N'Memory')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (5, N'Hard Drives')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (6, N'Solid State Drives')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (7, N'Power Supplies')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (8, N'Cases')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (9, N'CPU Coolers')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (10, N'Processors')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (11, N'Graphics Cards')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (12, N'Motherboards')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (13, N'Memory')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (14, N'Hard Drives')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (15, N'Solid State Drives')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (16, N'Power Supplies')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (17, N'Cases')
INSERT [dbo].[Category_Of_Parts] ([CategoryID], [Name]) VALUES (18, N'CPU Coolers')
SET IDENTITY_INSERT [dbo].[Category_Of_Parts] OFF
GO
SET IDENTITY_INSERT [dbo].[Computer_Parts] ON 

INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (1, 2015, N'i5-6500', 1)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (2, 2015, N'i5-6600K', 1)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (3, 2016, N'i7-6800K', 1)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (4, 2021, N'Ryzen 5 5600G', 1)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (5, 2017, N'i7-7700T', 1)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (6, 2017, N'CRYORIG H7 49.0 CFM', 9)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (7, 2016, N'Corsair H105 73.0 CFM Liquid', 9)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (8, 2016, N'Scythe Mugen 4 79.0 CFM', 9)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (9, 2020, N'Corsair iCUE H100i ELITE CAPELLIX', 9)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (10, 2016, N'H110M-A/M.2 MicroATXLGA1151', 3)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (11, 2015, N'Gigabyte GA-Z170X-UD3 ATX LGA1151', 3)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (12, 2015, N'ASRock X99 Extreme3 ATX LGA2011-3', 3)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (13, 2020, N'MSI B550M-A PRO Micro ATX AM4', 3)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (14, 2016, N'G.Skill NT Series 8GB', 4)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (15, 2019, N'Team Dark 16GB ', 4)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (16, 2019, N'Team Vulcan Z 16 GB', 4)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (17, 2017, N'G.SKILL Aegis 32GB', 4)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (18, 2015, N'PNY CS1311 240GB 2.5', 6)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (19, 2016, N'Crucial MX300 525GB 2.5', 6)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (20, 2015, N'ADATA SU635 480 GB', 6)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (21, 2016, N'Seagate Barracuda 2TB', 5)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (22, 2012, N'Western Digital Caviar Blue 1TB', 5)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (23, 2016, N'PowerColor Radeon RX 480 ', 2)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (24, 2014, N'Gigabyte GeForce GTX 1070', 2)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (25, 2016, N'Zotac GeForce GTX 1080', 2)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (26, 2017, N'Phanteks Enthoo EVOLV MicroATX Mini Tower', 8)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (27, 2015, N'Silverstone KL05B-Q ATX Mid Tower', 8)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (28, 2020, N'Phanteks Enthoo Pro ATX Full Tower', 8)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (29, 2015, N'XFX XTR 550W 80', 7)
INSERT [dbo].[Computer_Parts] ([PartID], [ManufactureYear], [Seria], [CategoryID]) VALUES (30, 2016, N'EVGA SuperNOVA G3 850W 80', 7)
SET IDENTITY_INSERT [dbo].[Computer_Parts] OFF
GO
SET IDENTITY_INSERT [dbo].[Computers] ON 

INSERT [dbo].[Computers] ([ComputerID], [Description], [Created], [Guarantee], [PC_Name]) VALUES (1, N'Sistem Desktop PC Powered by ASUS cu procesor AMD Ryzen™ 5 5600G, 16GB DDR4, 520GB SSD, Wi-Fi, No OS                                                                                                                                                                                                                                                                                                                                                                                                                ', CAST(N'2021-03-12' AS Date), 3, N'AER K1')
INSERT [dbo].[Computers] ([ComputerID], [Description], [Created], [Guarantee], [PC_Name]) VALUES (2, N'Computer IntelCore i7 6800, 32 GB RAM DDR3, 2TB Hard, 240 GB SSD, Geforce GTX 1070, Windows 10 Pro                                                                                                                                                                                                                                                                                                                                                                                                                  ', CAST(N'2021-03-20' AS Date), 3, N'AER K2')
INSERT [dbo].[Computers] ([ComputerID], [Description], [Created], [Guarantee], [PC_Name]) VALUES (3, N'Desktop Intel® Core™ i5-6500 3.2 Ghz, 8 gb ddr4, hdd 500 gb, Graphics Radeon RX 480                                                                                                                                                                                                                                                                                                                                                                                                                                 ', CAST(N'2021-04-08' AS Date), 2, N'AER K')
INSERT [dbo].[Computers] ([ComputerID], [Description], [Created], [Guarantee], [PC_Name]) VALUES (4, N'Sistem PC Cyan Intel Core i5, 500GB HDD, 8GB DDR3, GeForce GTX 1070                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', CAST(N'2021-04-19' AS Date), 1, N'AER K0.2')
INSERT [dbo].[Computers] ([ComputerID], [Description], [Created], [Guarantee], [PC_Name]) VALUES (5, N'Set sistem PC Mid Tower, Procesor Intel Core I5, RAM 8GB, 2TB HDD, Bluelight & camera web, multicolor                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2021-04-23' AS Date), 2, N'AER K0.3')
INSERT [dbo].[Computers] ([ComputerID], [Description], [Created], [Guarantee], [PC_Name]) VALUES (6, N'Desktop PC Office, Intel® Core™ i5-6500, 8GB RAM DDR4, M.2 board, OS: Linux                                                                                                                                                                                                                                                                                                                                                                                                                                         ', CAST(N'2021-04-30' AS Date), 1, N'AER K0.4')
INSERT [dbo].[Computers] ([ComputerID], [Description], [Created], [Guarantee], [PC_Name]) VALUES (7, N'Computer Intel® Core™ Processor I5 - 3.10GHz - 3.4GHz Turbo, 4GB DDR3, 500GB Hard Disck, DVD-Rom                                                                                                                                                                                                                                                                                                                                                                                                                    ', CAST(N'2021-05-05' AS Date), 2, N'AER K1.2')
SET IDENTITY_INSERT [dbo].[Computers] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (1, N'MasterCard', N'MonikaKohler@mastercard.com', N'03764 89 20 78', 1, 1, N'38645357', CAST(N'2021-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (2, N'Frank Glockner', N'FrankGlockner@dayrep.com', N'07345 53 63 34', 0, 2, N'8628927667194', CAST(N'2021-04-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (3, N'Mathias Frey', N'MathiasFrey@teleworm.us', N'0660 501 62 09', 0, 3, N'5934661327569', CAST(N'2021-07-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (4, N'Lucas Lange', N'LucasLange@armyspy.com', N'0650 583 00 65', 0, 4, N'6299118385047', CAST(N'2021-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (5, N'Anna Bachmeier', N'AnnaBachmeier@armyspy.com', N'0660 959 55 56', 0, 5, N'2405413957683', CAST(N'2021-04-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (6, N'Leah Maier', N'LeahMaier@teleworm.us', N'0680 538 95 34', 0, 6, N'1455013461023', CAST(N'2021-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (7, N'Oracle', N'yolando.wilkerson@oracle.com', N'+1 716 123 4485', 1, 7, N'27374988', CAST(N'2021-04-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (8, N'Cantemir Turcu', N'ristrate@yahoo.com', N'0699 816 94 20', 0, 8, N'8394699390682', CAST(N'2021-01-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (9, N'Florentin Radulescu', N'florin.radulescu12@yahoo.ro', N'0777401530', 0, 9, N'1797690300682', CAST(N'2021-05-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (10, N'Amelia Cazacu', N'AmCaz91@gmail.com', N'0798777327', 0, 10, N'1136566338374', CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (11, N'Valentin Pop', N'pop.valentin@yahoo.ro', N'0725099074', 0, 11, N'2394410036575', CAST(N'2021-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (12, N'Teodata Angelo', N'TeodataAngelo@rhyta.com', N'0374 2886123', 0, 12, N'9673156987967', CAST(N'2021-03-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (13, N'Lorenza Iadanza', N'LorenzaIadanza@armyspy.com', N'0341 7475720', 0, 13, N'1319633860719', CAST(N'2021-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (14, N'Rolando Rizzo', N'RolandoRizzo@dayrep.com', N'0327 4294245', 1, 14, N'13091574', CAST(N'2021-09-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (15, N'Maurizia Lorenzo', N'MauriziaLorenzo@armyspy.com', N'0324 2713294', 0, 15, N'8429705735023', CAST(N'2021-10-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([CustomerID], [Name], [Email], [Phone], [Law], [LocationID], [CNP_or_CodeFiscal], [EffectiveDate]) VALUES (16, N'Martino Udinesi', N'MartinoUdinesi@armyspy.com', N'0390 4643028', 0, 16, N'3549318512786', CAST(N'2021-06-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (1, N'Fichtestr. 50b, Apt. 156, 30283, Nord Jonathanburg', N'Germany', N'Thüringen')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (2, N'Blaukehlchenweg 16a, 0 OG, 47393, Nord Arwen', N'Germany', N'Bayern')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (3, N'Kennedybrücke 30b, Apt. 437, 2780, Waidhofen an der Thaya', N'Austria', N'Vorarlberg')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (4, N'Bruderhofgasse 59c, Zimmer 602, 7798, Dietach', N'Austria', N'Wien')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (5, N'Flachbergstraße 93a, Zimmer 391, 2408, Eichgraben', N'Austria', N'Steiermark')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (6, N'Heinrich Landauer Gasse 9, 3 OG, 3094, Dienten am Hochkönig', N'Austria', N'Steiermark')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (7, N'Konrad-Duden-Gasse 27a, Apt. 716, 4498, Sankt Johann im Saggautal', N'Austria', N'Vorarlberg')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (8, N'Bulevardul Piatra Morii, Bloc 58, Ap. 397, Ap. 886, 946189, Caras-Severin', N'Romania', N'Fete?ti')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (9, N'Aleea Alexandru Locusteanu, Bloc 21, Ap. 511, Ap. 74, 534376, Târgu Bujor', N'Romania', N'Bucuresti')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (10, N'Aleea Barometrului, Bloc 18, Ap. 90, Ap. 629, 455564, Mehedinti', N'Romania', N'Suceava')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (11, N'Intrarea Tufanilor, Bloc 70, Ap. 376, Ap. 22, 158392, Harghita', N'Romania', N'Sacueni')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (12, N'Rotonda Genesio 8, Piano 1, 95290, San Maida nell''emilia', N'Italy', N'Torino')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (13, N'Borgo Innocente 1, Piano 3, 77502, Egger veneto', N'Italy', N'Novara')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (14, N'Piazza Kofler 388, Appartamento 74, Appartamento 70, 09146, Quarto Amadeo', N'Italy', N'Chieti')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (15, N'Piazza Di Mauro 06, Appartamento 66, Appartamento 34, 71293, Foca del friuli', N'Italy', N'Avellino')
INSERT [dbo].[Locations] ([LocationID], [Address], [Country], [Town]) VALUES (16, N'Rotonda Favaro 655, Appartamento 62, Piano 4, 78182, Crespi laziale', N'Italy', N'Caltanissetta')
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturers] ON 

INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (1, N'Intel')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (2, N'AMD')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (3, N'Cryorig')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (4, N'Gigabyte')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (5, N'Corsair')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (6, N'ASUS')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (7, N'PowerColor')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (8, N'Zotac')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (9, N'ASRock')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (10, N'PNY Technologies')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (11, N'Seagate Technology')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (12, N'Western Digital Corporation')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (13, N'Scythe')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (14, N'G.SKILL I.E.')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (15, N'TeamGroup')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (16, N'Micron Technology')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (17, N'ADATA')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (18, N'Phanteks')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (19, N'SilverStone')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (20, N'EVGA Corporation')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (21, N'XFX')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (22, N'MSI B550M-A PRO Micro ATX AM4')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (23, N'Intel')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (24, N'AMD')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (25, N'Cryorig')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (26, N'Gigabyte')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (27, N'Corsair')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (28, N'ASUS')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (29, N'PowerColor')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (30, N'Zotac')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (31, N'ASRock')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (32, N'PNY Technologies')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (33, N'Seagate Technology')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (34, N'Western Digital Corporation')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (35, N'Scythe')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (36, N'G.SKILL I.E.')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (37, N'TeamGroup')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (38, N'Micron Technology')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (39, N'ADATA')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (40, N'Phanteks')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (41, N'SilverStone')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (42, N'EVGA Corporation')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (43, N'XFX')
INSERT [dbo].[Manufacturers] ([FactoryID], [Name]) VALUES (44, N'MSI B550M-A PRO Micro ATX AM4')
SET IDENTITY_INSERT [dbo].[Manufacturers] OFF
GO
SET IDENTITY_INSERT [dbo].[Purchases] ON 

INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (85, CAST(N'2021-02-02' AS Date), 192, 50, 1, 1)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (86, CAST(N'2021-02-05' AS Date), 213, 35, 2, 1)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (87, CAST(N'2021-02-07' AS Date), 317, 20, 3, 1)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (88, CAST(N'2021-02-10' AS Date), 280, 5, 4, 2)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (89, CAST(N'2021-02-12' AS Date), 320, 3, 5, 1)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (90, CAST(N'2021-02-06' AS Date), 20, 10, 6, 3)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (91, CAST(N'2021-02-07' AS Date), 103, 2, 7, 5)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (92, CAST(N'2021-02-10' AS Date), 47, 1, 8, 13)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (93, CAST(N'2021-02-15' AS Date), 44.9, 4, 10, 16)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (94, CAST(N'2021-02-16' AS Date), 169.7, 4, 12, 9)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (95, CAST(N'2021-02-20' AS Date), 77, 5, 13, 22)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (96, CAST(N'2021-02-19' AS Date), 39.45, 4, 14, 14)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (97, CAST(N'2021-02-19' AS Date), 42, 5, 15, 15)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (98, CAST(N'2021-02-19' AS Date), 42, 5, 16, 15)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (99, CAST(N'2021-02-20' AS Date), 50, 5, 17, 14)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (100, CAST(N'2021-02-15' AS Date), 80, 2, 18, 10)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (101, CAST(N'2021-02-15' AS Date), 65.81, 5, 19, 16)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (102, CAST(N'2021-02-24' AS Date), 47, 12, 20, 17)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (103, CAST(N'2021-02-22' AS Date), 47, 8, 21, 11)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (104, CAST(N'2021-02-25' AS Date), 45.23, 3, 22, 12)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (105, CAST(N'2021-02-25' AS Date), 115, 7, 23, 7)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (106, CAST(N'2021-03-02' AS Date), 420, 3, 24, 4)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (107, CAST(N'2021-03-04' AS Date), 639, 2, 25, 8)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (108, CAST(N'2021-03-04' AS Date), 158, 2, 26, 18)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (109, CAST(N'2021-03-05' AS Date), 77, 5, 27, 19)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (110, CAST(N'2021-03-05' AS Date), 139, 2, 28, 18)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (111, CAST(N'2021-03-07' AS Date), 89.5, 5, 29, 21)
INSERT [dbo].[Purchases] ([PurchaseID], [Date], [Price], [Amount], [ManufacturerID], [ComputerPartID]) VALUES (112, CAST(N'2021-03-07' AS Date), 181, 3, 30, 20)
SET IDENTITY_INSERT [dbo].[Purchases] OFF
GO
SET IDENTITY_INSERT [dbo].[SalePurpose] ON 

INSERT [dbo].[SalePurpose] ([ScopeID], [Definition]) VALUES (1, N'Home')
INSERT [dbo].[SalePurpose] ([ScopeID], [Definition]) VALUES (2, N'Gaming')
INSERT [dbo].[SalePurpose] ([ScopeID], [Definition]) VALUES (3, N'Business')
INSERT [dbo].[SalePurpose] ([ScopeID], [Definition]) VALUES (4, N'Programming')
SET IDENTITY_INSERT [dbo].[SalePurpose] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([ID], [Date], [Amount], [ScopeID], [ComputerID], [CustomerID], [Price]) VALUES (1, CAST(N'2021-04-22' AS Date), 1, 1, 1, 2, 1400)
INSERT [dbo].[Sales] ([ID], [Date], [Amount], [ScopeID], [ComputerID], [CustomerID], [Price]) VALUES (2, CAST(N'2021-05-12' AS Date), 1, 1, 3, 6, 900)
INSERT [dbo].[Sales] ([ID], [Date], [Amount], [ScopeID], [ComputerID], [CustomerID], [Price]) VALUES (3, CAST(N'2021-05-02' AS Date), 1, 3, 6, 5, 1500)
INSERT [dbo].[Sales] ([ID], [Date], [Amount], [ScopeID], [ComputerID], [CustomerID], [Price]) VALUES (4, CAST(N'2021-05-08' AS Date), 1, 4, 7, 9, 2000)
INSERT [dbo].[Sales] ([ID], [Date], [Amount], [ScopeID], [ComputerID], [CustomerID], [Price]) VALUES (5, CAST(N'2021-03-25' AS Date), 1, 2, 2, 4, 1875)
INSERT [dbo].[Sales] ([ID], [Date], [Amount], [ScopeID], [ComputerID], [CustomerID], [Price]) VALUES (6, CAST(N'2021-03-25' AS Date), 1, 4, 4, 1, 1750)
INSERT [dbo].[Sales] ([ID], [Date], [Amount], [ScopeID], [ComputerID], [CustomerID], [Price]) VALUES (7, CAST(N'2021-04-29' AS Date), 1, 2, 5, 11, 1500)
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Computer_Parts]    Script Date: 4/11/2022 6:05:06 PM ******/
ALTER TABLE [dbo].[Computer_Parts] ADD  CONSTRAINT [IX_Computer_Parts] UNIQUE NONCLUSTERED 
(
	[Seria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
