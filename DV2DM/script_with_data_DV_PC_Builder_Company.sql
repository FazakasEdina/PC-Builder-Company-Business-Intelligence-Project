USE [master]
GO
/****** Object:  Database [PC_Builder_Company_DV]    Script Date: 5/15/2022 1:26:50 AM ******/
CREATE DATABASE [PC_Builder_Company_DV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PC_Builder_Company_DV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PC_Builder_Company_DV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PC_Builder_Company_DV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PC_Builder_Company_DV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PC_Builder_Company_DV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PC_Builder_Company_DV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PC_Builder_Company_DV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET ARITHABORT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET  MULTI_USER 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PC_Builder_Company_DV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PC_Builder_Company_DV] SET QUERY_STORE = OFF
GO
USE [PC_Builder_Company_DV]
GO
/****** Object:  Table [dbo].[HubCategories]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HubCategories](
	[H_Categories_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Categories_RSRC] [varchar](10) NULL,
	[H_Categories_LDTS] [datetime] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_HubCategories] PRIMARY KEY CLUSTERED 
(
	[H_Categories_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HubComponents]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HubComponents](
	[H_Components_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Components_RSRC] [varchar](10) NULL,
	[H_Components_LDTS] [datetime] NULL,
	[Seria] [varchar](50) NULL,
 CONSTRAINT [PK_HubComponents] PRIMARY KEY CLUSTERED 
(
	[H_Components_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HubComputers]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HubComputers](
	[H_Computers_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Computers_RSRC] [varchar](10) NULL,
	[H_Computers_LDTS] [datetime] NULL,
	[ComputerName] [varchar](50) NULL,
 CONSTRAINT [PK_HubComputers] PRIMARY KEY CLUSTERED 
(
	[H_Computers_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HubCustomers]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HubCustomers](
	[H_Customers_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Customers_RSRC] [varchar](10) NULL,
	[H_Customers_LDTS] [datetime] NULL,
	[CNP_or_CodeFiscal] [varchar](13) NULL,
 CONSTRAINT [PK_HubCustomers2] PRIMARY KEY CLUSTERED 
(
	[H_Customers_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HubLocations]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HubLocations](
	[H_Locations_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Locations_RSRC] [varchar](10) NULL,
	[H_Locations_LDTS] [datetime] NULL,
	[Address] [varchar](100) NULL,
 CONSTRAINT [PK_HubLocations] PRIMARY KEY CLUSTERED 
(
	[H_Locations_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HubManufacturers]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HubManufacturers](
	[H_Manufacturers_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Manufacturers_RSRC] [varchar](10) NULL,
	[H_Manufacturers_LDTS] [datetime] NULL,
	[ManufacturerName] [varchar](50) NULL,
 CONSTRAINT [PK_HubManufacturers] PRIMARY KEY CLUSTERED 
(
	[H_Manufacturers_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HubPurposeOfSale]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HubPurposeOfSale](
	[H_Purpose_of_sale_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Purpose_of_sale_RSRC] [varchar](10) NULL,
	[H_Purpose_of_sale_LDTS] [datetime] NULL,
	[PurposeID] [int] NULL,
 CONSTRAINT [PK_HubPurposeOfSale] PRIMARY KEY CLUSTERED 
(
	[H_Purpose_of_sale_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkAssembly]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkAssembly](
	[L_Assembly_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Assembly_RSRC] [varchar](10) NULL,
	[L_Assembly_LDTS] [datetime] NULL,
	[H_Components_SQN] [int] NULL,
	[H_Computers_SQN] [int] NULL,
 CONSTRAINT [PK_LinkAssembly] PRIMARY KEY CLUSTERED 
(
	[L_Assembly_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkCategoryOfComponent]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkCategoryOfComponent](
	[L_CatOfCom_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_CatOfCom_RSRC] [varchar](10) NULL,
	[L_CatOfCom_LDTS] [datetime] NULL,
	[H_Components_SQN] [int] NULL,
	[H_Categories_SQN] [int] NULL,
 CONSTRAINT [PK_LinkCategoryOfComponent] PRIMARY KEY CLUSTERED 
(
	[L_CatOfCom_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkPurchase]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkPurchase](
	[L_Purchase_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Purchase_RSRC] [varchar](10) NULL,
	[H_Purchase_LDTS] [datetime] NULL,
	[H_Components_SQN] [int] NULL,
	[H_Manufacturers_SQN] [int] NULL,
 CONSTRAINT [PK_LinkPurchase] PRIMARY KEY CLUSTERED 
(
	[L_Purchase_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkResidence]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkResidence](
	[L_Residence_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Residence_RSRC] [varchar](10) NULL,
	[L_Residence_LDTS] [datetime] NULL,
	[H_Locations_SQN] [int] NULL,
	[H_Customers_SQN] [int] NULL,
 CONSTRAINT [PK_LinkResidence] PRIMARY KEY CLUSTERED 
(
	[L_Residence_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkSales]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkSales](
	[L_Sales_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Sales_RSRC] [varchar](10) NULL,
	[L_Sales_LDTS] [datetime] NULL,
	[H_Computer_SQN] [int] NULL,
	[H_Customer_SQN] [int] NULL,
	[H_Purpose_of_sale_SQN] [int] NULL,
 CONSTRAINT [PK_LinkSales] PRIMARY KEY CLUSTERED 
(
	[L_Sales_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatCategories]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatCategories](
	[H_Categories_SQN] [int] NOT NULL,
	[S_Categories_LDTS] [datetime] NOT NULL,
	[S_Categories_RSRC] [varchar](30) NOT NULL,
	[CategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_SatCategories] PRIMARY KEY CLUSTERED 
(
	[H_Categories_SQN] ASC,
	[S_Categories_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatComponents]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatComponents](
	[H_Components_SQN] [int] NOT NULL,
	[S_Components_LDTS] [datetime] NOT NULL,
	[S_Components_RSRC] [varchar](30) NOT NULL,
	[LaunchYear] [int] NULL,
 CONSTRAINT [PK_SarComponents] PRIMARY KEY CLUSTERED 
(
	[H_Components_SQN] ASC,
	[S_Components_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatComputers]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatComputers](
	[H_Computers_SQN] [int] NOT NULL,
	[S_Computers_LDTS] [datetime] NOT NULL,
	[S_Computers_RSRC] [varchar](30) NOT NULL,
	[Warrantee] [int] NULL,
	[Description] [nvarchar](512) NULL,
	[Created] [date] NULL,
 CONSTRAINT [PK_SatComputers] PRIMARY KEY CLUSTERED 
(
	[H_Computers_SQN] ASC,
	[S_Computers_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatCustomers]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatCustomers](
	[H_Customers_SQN] [int] NOT NULL,
	[S_Customers_LDTS] [datetime] NOT NULL,
	[S_Customers_LEDTS] [datetime] NOT NULL,
	[S_Customers_RSRC] [varchar](30) NOT NULL,
	[Name] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](30) NULL,
	[Person_or_Company] [bit] NULL,
 CONSTRAINT [PK_SatCustomers] PRIMARY KEY CLUSTERED 
(
	[H_Customers_SQN] ASC,
	[S_Customers_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatLocations]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatLocations](
	[H_Locations_SQN] [int] NOT NULL,
	[S_Locations_LDTS] [datetime] NOT NULL,
	[S_Locations_RSRC] [varchar](30) NOT NULL,
	[City] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
 CONSTRAINT [PK_SatLocations] PRIMARY KEY CLUSTERED 
(
	[H_Locations_SQN] ASC,
	[S_Locations_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatPurchase]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatPurchase](
	[L_Purchase_SQN] [int] NOT NULL,
	[S_Purchase_LDTS] [datetime] NOT NULL,
	[S_Purchase_RSRC] [varchar](30) NOT NULL,
	[Date] [date] NULL,
	[Price] [float] NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_SatPurchase] PRIMARY KEY CLUSTERED 
(
	[L_Purchase_SQN] ASC,
	[S_Purchase_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatPurposeOfSale]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatPurposeOfSale](
	[H_Purpose_of_sale_SQN] [int] NOT NULL,
	[S_Purpose_of_sale_LDTS] [datetime] NOT NULL,
	[S_Purpose_of_sale_RSRC] [varchar](30) NOT NULL,
	[PurposeName] [varchar](30) NULL,
 CONSTRAINT [PK_SatPurposeOfSale] PRIMARY KEY CLUSTERED 
(
	[H_Purpose_of_sale_SQN] ASC,
	[S_Purpose_of_sale_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatSales]    Script Date: 5/15/2022 1:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatSales](
	[L_Sales_SQN] [int] NOT NULL,
	[S_Sales_LDTS] [datetime] NOT NULL,
	[S_Sales_RSRC] [varchar](30) NOT NULL,
	[Date] [datetime] NULL,
	[Amount] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_SatSales] PRIMARY KEY CLUSTERED 
(
	[L_Sales_SQN] ASC,
	[S_Sales_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HubCategories] ON 

INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (451, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 1)
INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (452, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 2)
INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (453, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 3)
INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (454, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 4)
INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (455, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 5)
INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (456, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 6)
INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (457, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 7)
INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (458, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 8)
INSERT [dbo].[HubCategories] ([H_Categories_SQN], [H_Categories_RSRC], [H_Categories_LDTS], [CategoryID]) VALUES (459, N'Oracle', CAST(N'2022-05-14T00:49:58.000' AS DateTime), 9)
SET IDENTITY_INSERT [dbo].[HubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[HubComponents] ON 

INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (1, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'i5-6500')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (2, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'i5-6600K')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (3, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'i7-6800K')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (4, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Ryzen 5 5600G')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (5, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'i7-7700T')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (6, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'CRYORIG H7 49.0 CFM')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (7, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Corsair H105 73.0 CFM Liquid')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (8, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Scythe Mugen 4 79.0 CFM')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (9, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Corsair iCUE H100i ELITE CAPELLIX')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (10, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'H110M-A/M.2 MicroATXLGA1151')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (11, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Gigabyte GA-Z170X-UD3 ATX LGA1151')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (12, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'ASRock X99 Extreme3 ATX LGA2011-3')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (13, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'MSI B550M-A PRO Micro ATX AM4')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (14, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'G.Skill NT Series 8GB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (15, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Team Dark 16GB ')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (16, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Team Vulcan Z 16 GB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (17, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'G.SKILL Aegis 32GB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (18, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'PNY CS1311 240GB 2.5')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (19, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Crucial MX300 525GB 2.5')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (20, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'ADATA SU635 480 GB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (21, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Seagate Barracuda 2TB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (22, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Western Digital Caviar Blue 1TB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (23, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'PowerColor Radeon RX 480 ')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (24, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Gigabyte GeForce GTX 1070')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (25, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Zotac GeForce GTX 1080')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (26, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Phanteks Enthoo EVOLV MicroATX Mini Tower')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (27, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Silverstone KL05B-Q ATX Mid Tower')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (28, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'Phanteks Enthoo Pro ATX Full Tower')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (29, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'XFX XTR 550W 80')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (30, N'MSSQL', CAST(N'2022-05-14T00:47:07.000' AS DateTime), N'EVGA SuperNOVA G3 850W 80')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (31, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'i3-7320')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (32, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'i3-8350K')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (33, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'i5-3570K')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (34, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'i5-6402P')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (35, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'i5-4460')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (36, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'FX-9590')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (37, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'A4-4020')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (38, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'Ryzen 3 1200')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (39, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'Strix RX 470')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (40, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'GeForce GTX 1050')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (41, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'Z87 Extreme4')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (42, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'ASRock Z370 Extreme4')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (43, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'Corsair LPX 32GB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (44, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'Corsair LPX 16GB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (45, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'Corsair 8GB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (46, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'P300 1 TB')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (47, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'SA400S37')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (48, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'970 EVO')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (49, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'CX450')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (50, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'RM550x')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (51, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'Aero-800')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (52, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'Nero LX 2 120 mm')
INSERT [dbo].[HubComponents] ([H_Components_SQN], [H_Components_RSRC], [H_Components_LDTS], [Seria]) VALUES (53, N'Oracle', CAST(N'2022-05-14T00:47:09.000' AS DateTime), N'AK-CC7108EP01 - 92mm')
SET IDENTITY_INSERT [dbo].[HubComponents] OFF
GO
SET IDENTITY_INSERT [dbo].[HubComputers] ON 

INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (1, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 100')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (2, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 200')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (3, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 300')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (4, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 400')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (5, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 500')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (6, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 600')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (7, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 700')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (8, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 800')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (9, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 900')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (10, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1000')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (11, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1100')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (12, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1200')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (13, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1300')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (14, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1400')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (15, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1500')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (16, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1600')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (17, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1700')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (18, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1800')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (19, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 1900')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (20, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 2000')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (21, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 2100')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (22, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 2200')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (23, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 2300')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (24, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 2400')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (25, N'Oracle', CAST(N'2022-05-14T01:09:52.000' AS DateTime), N'AER 2500')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (26, N'MSSQL', CAST(N'2022-05-14T01:10:58.000' AS DateTime), N'AER K1')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (27, N'MSSQL', CAST(N'2022-05-14T01:10:58.000' AS DateTime), N'AER K2')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (28, N'MSSQL', CAST(N'2022-05-14T01:10:58.000' AS DateTime), N'AER K')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (29, N'MSSQL', CAST(N'2022-05-14T01:10:58.000' AS DateTime), N'AER K0.2')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (30, N'MSSQL', CAST(N'2022-05-14T01:10:58.000' AS DateTime), N'AER K0.3')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (31, N'MSSQL', CAST(N'2022-05-14T01:10:58.000' AS DateTime), N'AER K0.4')
INSERT [dbo].[HubComputers] ([H_Computers_SQN], [H_Computers_RSRC], [H_Computers_LDTS], [ComputerName]) VALUES (32, N'MSSQL', CAST(N'2022-05-14T01:10:58.000' AS DateTime), N'AER K1.2')
SET IDENTITY_INSERT [dbo].[HubComputers] OFF
GO
SET IDENTITY_INSERT [dbo].[HubCustomers] ON 

INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (29, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'38645357')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (30, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'8628927667194')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (31, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'5934661327569')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (32, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'6299118385047')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (33, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'2405413957683')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (34, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'1455013461023')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (35, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'27374988')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (36, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'8394699390682')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (37, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'1797690300682')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (38, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'1136566338374')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (39, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'2394410036575')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (40, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'9673156987967')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (41, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'1319633860719')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (42, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'13091574')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (43, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'8429705735023')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (44, N'MSSQL', CAST(N'2022-05-14T00:57:01.000' AS DateTime), N'3549318512786')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (45, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'15591983')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (46, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'21571840')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (47, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'2246329173936')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (48, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'2641588347829')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (49, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'8466221837451')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (50, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'6105872132746')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (51, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'4384231882483')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (52, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'3216612547168')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (53, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'2473100163347')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (54, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'4745437048257')
INSERT [dbo].[HubCustomers] ([H_Customers_SQN], [H_Customers_RSRC], [H_Customers_LDTS], [CNP_or_CodeFiscal]) VALUES (55, N'Oracle', CAST(N'2022-05-14T00:57:17.000' AS DateTime), N'2260318062984')
SET IDENTITY_INSERT [dbo].[HubCustomers] OFF
GO
SET IDENTITY_INSERT [dbo].[HubLocations] ON 

INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (1, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Fichtestr. 50b, Apt. 156, 30283, Nord Jonathanburg')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (2, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Blaukehlchenweg 16a, 0 OG, 47393, Nord Arwen')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (3, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Kennedybrücke 30b, Apt. 437, 2780, Waidhofen an der Thaya')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (4, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Bruderhofgasse 59c, Zimmer 602, 7798, Dietach')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (5, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Flachbergstraße 93a, Zimmer 391, 2408, Eichgraben')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (6, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Heinrich Landauer Gasse 9, 3 OG, 3094, Dienten am Hochkönig')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (7, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Konrad-Duden-Gasse 27a, Apt. 716, 4498, Sankt Johann im Saggautal')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (8, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Bulevardul Piatra Morii, Bloc 58, Ap. 397, Ap. 886, 946189, Caras-Severin')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (9, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Aleea Alexandru Locusteanu, Bloc 21, Ap. 511, Ap. 74, 534376, Târgu Bujor')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (10, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Aleea Barometrului, Bloc 18, Ap. 90, Ap. 629, 455564, Mehedinti')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (11, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Intrarea Tufanilor, Bloc 70, Ap. 376, Ap. 22, 158392, Harghita')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (12, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Rotonda Genesio 8, Piano 1, 95290, San Maida nell''emilia')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (13, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Borgo Innocente 1, Piano 3, 77502, Egger veneto')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (14, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Piazza Kofler 388, Appartamento 74, Appartamento 70, 09146, Quarto Amadeo')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (15, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Piazza Di Mauro 06, Appartamento 66, Appartamento 34, 71293, Foca del friuli')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (16, N'MSSQL', CAST(N'2022-05-14T00:47:15.000' AS DateTime), N'Rotonda Favaro 655, Appartamento 62, Piano 4, 78182, Crespi laziale')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (17, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'1297 Via Cola di Rie')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (18, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'93091 Calle della Testa')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (19, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'12-98 Victoria Street')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (20, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'198 Clementi North')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (21, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'8204 Arthur St')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (22, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'Magdalen Centre, The Oxford Science Park')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (23, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'9702 Chester Road')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (24, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'Schwanthalerstr. 7031')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (25, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'Rua Frei Caneca 1360 ')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (26, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'20 Rue des Corps-Saints')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (27, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'Murtenstrasse 921')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (28, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'Pieter Breughelstraat 837')
INSERT [dbo].[HubLocations] ([H_Locations_SQN], [H_Locations_RSRC], [H_Locations_LDTS], [Address]) VALUES (29, N'Oracle', CAST(N'2022-05-14T00:54:14.000' AS DateTime), N'Mariano Escobedo 9991')
SET IDENTITY_INSERT [dbo].[HubLocations] OFF
GO
SET IDENTITY_INSERT [dbo].[HubManufacturers] ON 

INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (1, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Intel')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (2, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'AMD')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (3, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Cryorig')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (4, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Gigabyte')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (5, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Corsair')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (6, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'ASUS')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (7, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'PowerColor')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (8, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Zotac')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (9, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'ASRock')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (10, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'PNY Technologies')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (11, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Seagate Technology')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (12, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Western Digital Corporation')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (13, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Scythe')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (14, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'G.SKILL I.E.')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (15, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'TeamGroup')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (16, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Micron Technology')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (17, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'ADATA')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (18, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Phanteks')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (19, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'SilverStone')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (20, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'EVGA Corporation')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (21, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'XFX')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (22, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'MSI B550M-A PRO Micro ATX AM4')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (23, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Intel')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (24, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'AMD')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (25, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Cryorig')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (26, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Gigabyte')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (27, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Corsair')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (28, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'ASUS')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (29, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'PowerColor')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (30, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Zotac')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (31, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'ASRock')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (32, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'PNY Technologies')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (33, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Seagate Technology')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (34, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Western Digital Corporation')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (35, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Scythe')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (36, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'G.SKILL I.E.')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (37, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'TeamGroup')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (38, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Micron Technology')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (39, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'ADATA')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (40, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'Phanteks')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (41, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'SilverStone')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (42, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'EVGA Corporation')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (43, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'XFX')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (44, N'MSSQL', CAST(N'2022-05-14T00:47:20.000' AS DateTime), N'MSI B550M-A PRO Micro ATX AM4')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (45, N'Oracle', CAST(N'2022-05-14T00:47:21.000' AS DateTime), N'GigaByte')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (46, N'Oracle', CAST(N'2022-05-14T00:47:21.000' AS DateTime), N'Toshiba')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (47, N'Oracle', CAST(N'2022-05-14T00:47:21.000' AS DateTime), N'Kingston')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (48, N'Oracle', CAST(N'2022-05-14T00:47:21.000' AS DateTime), N'Samsung')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (49, N'Oracle', CAST(N'2022-05-14T00:47:21.000' AS DateTime), N'Akasa')
INSERT [dbo].[HubManufacturers] ([H_Manufacturers_SQN], [H_Manufacturers_RSRC], [H_Manufacturers_LDTS], [ManufacturerName]) VALUES (50, N'Oracle', CAST(N'2022-05-14T00:47:21.000' AS DateTime), N'Aerocool')
SET IDENTITY_INSERT [dbo].[HubManufacturers] OFF
GO
SET IDENTITY_INSERT [dbo].[HubPurposeOfSale] ON 

INSERT [dbo].[HubPurposeOfSale] ([H_Purpose_of_sale_SQN], [H_Purpose_of_sale_RSRC], [H_Purpose_of_sale_LDTS], [PurposeID]) VALUES (1, N'MSSQL', CAST(N'2022-05-14T00:47:23.000' AS DateTime), 1)
INSERT [dbo].[HubPurposeOfSale] ([H_Purpose_of_sale_SQN], [H_Purpose_of_sale_RSRC], [H_Purpose_of_sale_LDTS], [PurposeID]) VALUES (2, N'MSSQL', CAST(N'2022-05-14T00:47:23.000' AS DateTime), 2)
INSERT [dbo].[HubPurposeOfSale] ([H_Purpose_of_sale_SQN], [H_Purpose_of_sale_RSRC], [H_Purpose_of_sale_LDTS], [PurposeID]) VALUES (3, N'MSSQL', CAST(N'2022-05-14T00:47:23.000' AS DateTime), 3)
INSERT [dbo].[HubPurposeOfSale] ([H_Purpose_of_sale_SQN], [H_Purpose_of_sale_RSRC], [H_Purpose_of_sale_LDTS], [PurposeID]) VALUES (4, N'MSSQL', CAST(N'2022-05-14T00:47:23.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[HubPurposeOfSale] OFF
GO
SET IDENTITY_INSERT [dbo].[LinkAssembly] ON 

INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (1, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 31, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (2, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 31, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (3, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 31, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (4, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 31, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (5, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 31, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (6, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 31, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (7, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 31, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (8, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 32, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (9, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 32, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (10, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 32, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (11, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 33, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (12, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 34, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (13, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 34, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (14, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 34, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (15, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 34, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (16, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 35, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (17, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 36, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (18, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 37, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (19, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 37, 18)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (20, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 37, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (21, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 4, 26)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (22, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 9, 26)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (23, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 13, 26)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (24, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 15, 26)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (25, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 19, 26)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (26, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 25, 26)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (27, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 28, 26)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (28, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 30, 26)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (29, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 3, 27)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (30, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 7, 27)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (31, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 37, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (32, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 38, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (33, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 38, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (34, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 38, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (35, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 38, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (36, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (37, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (38, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (39, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (40, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (41, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 12, 27)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (42, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 17, 27)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (43, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 21, 27)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (44, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 24, 27)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (45, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 26, 27)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (46, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 29, 27)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (47, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 1, 28)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (48, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 6, 28)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (49, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 11, 28)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (50, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 14, 28)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (51, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (52, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (53, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (54, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (55, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (56, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (57, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (58, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (59, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (60, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (61, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 22, 28)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (62, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 23, 28)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (63, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 27, 28)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (64, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 29, 28)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (65, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 2, 29)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (66, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 7, 29)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (67, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 10, 29)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (68, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 14, 29)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (69, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 22, 29)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (70, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 24, 29)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (71, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 28, 29)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (72, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 30, 29)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (73, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 2, 30)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (74, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 8, 30)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (75, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 12, 30)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (76, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 14, 30)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (77, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 21, 30)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (78, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 24, 30)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (79, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 27, 30)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (80, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 30, 30)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (81, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (82, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (83, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (84, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (85, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (86, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (87, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 18)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (88, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (89, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (90, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (91, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 1, 31)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (92, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 6, 31)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (93, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 10, 31)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (94, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 16, 31)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (95, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 18, 31)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (96, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 23, 31)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (97, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 26, 31)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (98, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 29, 31)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (99, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 2, 32)
GO
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (100, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 8, 32)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (101, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (102, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (103, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (104, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (105, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (106, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (107, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (108, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (109, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 18)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (110, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (111, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 12, 32)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (112, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 15, 32)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (113, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 21, 32)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (114, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 24, 32)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (115, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 28, 32)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (116, N'MSSQL', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 30, 32)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (117, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (118, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (119, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (120, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (121, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (122, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (123, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (124, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (125, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (126, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (127, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (128, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (129, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (130, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (131, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (132, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 51, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (133, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 51, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (134, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 51, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (135, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 51, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (136, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 51, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (137, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 51, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (138, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (139, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (140, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (141, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (142, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (143, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (144, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (145, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 18)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (146, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (147, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (148, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (149, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (150, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 53, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (151, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 53, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (152, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 53, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (153, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 53, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (154, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 53, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (155, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 53, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (156, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 53, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (157, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 43, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (158, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 43, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (159, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 43, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (160, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 43, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (161, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 43, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (162, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 43, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (163, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (164, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (165, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (166, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (167, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (168, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (169, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (170, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 18)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (171, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (172, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (173, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (174, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 44, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (175, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 45, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (176, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 45, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (177, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 45, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (178, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 45, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (179, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 45, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (180, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 45, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (181, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 45, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (182, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (183, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (184, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (185, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (186, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (187, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (188, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (189, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (190, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (191, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (192, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (193, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (194, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (195, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (196, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (197, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (198, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (199, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 18)
GO
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (200, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (201, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (202, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (203, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (204, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (205, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (206, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 46, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (207, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (208, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (209, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (210, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (211, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (212, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (213, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (214, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (215, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 18)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (216, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (217, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (218, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 47, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (219, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (220, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (221, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (222, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (223, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (224, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (225, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (226, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (227, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (228, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (229, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (230, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (231, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 48, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (232, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (233, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (234, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (235, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (236, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (237, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (238, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 18)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (239, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (240, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (241, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (242, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 49, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (243, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (244, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (245, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (246, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (247, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (248, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (249, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (250, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (251, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (252, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (253, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (254, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (255, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (256, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 50, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (257, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (258, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 3)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (259, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 4)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (260, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 5)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (261, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (262, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 8)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (263, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 10)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (264, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 11)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (265, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (266, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 13)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (267, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (268, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 15)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (269, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 16)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (270, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 18)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (271, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (272, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 21)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (273, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 22)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (274, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (275, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 51, 25)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (276, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 52, 23)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (277, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 52, 24)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (278, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 1)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (279, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 2)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (280, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 6)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (281, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 7)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (282, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 9)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (283, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 12)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (284, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 14)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (285, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 17)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (286, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 19)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (287, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 20)
INSERT [dbo].[LinkAssembly] ([L_Assembly_SQN], [L_Assembly_RSRC], [L_Assembly_LDTS], [H_Components_SQN], [H_Computers_SQN]) VALUES (288, N'Oracle', CAST(N'2022-05-15T01:16:36.000' AS DateTime), 53, 22)
SET IDENTITY_INSERT [dbo].[LinkAssembly] OFF
GO
SET IDENTITY_INSERT [dbo].[LinkCategoryOfComponent] ON 

INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (1, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 31, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (2, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 32, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (3, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 33, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (4, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 34, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (5, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 35, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (6, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 36, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (7, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 37, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (8, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 38, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (9, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 39, 452)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (10, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 40, 452)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (11, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 1, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (12, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 2, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (13, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 3, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (14, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 4, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (15, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 5, 451)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (16, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 6, 459)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (17, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 7, 459)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (18, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 8, 459)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (19, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 9, 459)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (20, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 10, 453)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (21, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 41, 453)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (22, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 42, 453)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (23, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 43, 454)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (24, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 44, 454)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (25, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 45, 454)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (26, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 46, 455)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (27, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 47, 456)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (28, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 48, 456)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (29, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 49, 457)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (30, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 50, 457)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (31, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 11, 453)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (32, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 12, 453)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (33, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 13, 453)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (34, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 14, 454)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (35, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 15, 454)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (36, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 16, 454)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (37, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 17, 454)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (38, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 18, 456)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (39, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 19, 456)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (40, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 20, 456)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (41, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 51, 458)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (42, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 52, 459)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (43, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 53, 459)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (44, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 21, 455)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (45, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 22, 455)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (46, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 23, 452)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (47, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 24, 452)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (48, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 25, 452)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (49, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 26, 458)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (50, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 27, 458)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (51, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 28, 458)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (52, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 29, 457)
INSERT [dbo].[LinkCategoryOfComponent] ([L_CatOfCom_SQN], [L_CatOfCom_RSRC], [L_CatOfCom_LDTS], [H_Components_SQN], [H_Categories_SQN]) VALUES (53, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 30, 457)
SET IDENTITY_INSERT [dbo].[LinkCategoryOfComponent] OFF
GO
SET IDENTITY_INSERT [dbo].[LinkPurchase] ON 

INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (1, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 1, 1)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (2, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 1, 2)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (3, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 1, 3)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (4, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 2, 4)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (5, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 1, 5)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (6, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 3, 6)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (7, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 5, 7)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (8, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 13, 8)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (9, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 16, 10)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (10, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 9, 12)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (11, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 22, 13)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (12, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 14, 14)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (13, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 15, 15)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (14, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 15, 16)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (15, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 14, 17)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (16, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 10, 18)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (17, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 16, 19)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (18, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 17, 20)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (19, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 11, 21)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (20, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 12, 22)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (21, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 7, 1)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (22, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 4, 2)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (23, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 8, 3)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (24, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 18, 4)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (25, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 19, 5)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (26, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 18, 6)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (27, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 21, 7)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (28, N'MSSQL', CAST(N'2022-05-14T01:55:02.000' AS DateTime), 20, 8)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (29, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 31, 1)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (30, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 32, 1)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (31, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 33, 1)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (32, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 34, 1)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (33, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 35, 1)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (34, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 36, 2)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (35, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 37, 2)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (36, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 38, 2)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (37, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 39, 6)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (38, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 40, 45)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (39, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 41, 9)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (40, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 42, 9)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (41, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 51, 5)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (42, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 52, 5)
INSERT [dbo].[LinkPurchase] ([L_Purchase_SQN], [L_Purchase_RSRC], [H_Purchase_LDTS], [H_Components_SQN], [H_Manufacturers_SQN]) VALUES (43, N'Oracle', CAST(N'2022-05-14T01:55:03.000' AS DateTime), 53, 5)
SET IDENTITY_INSERT [dbo].[LinkPurchase] OFF
GO
SET IDENTITY_INSERT [dbo].[LinkResidence] ON 

INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (1, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 1, 29)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (2, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 2, 30)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (3, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 3, 31)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (4, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 4, 32)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (5, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 5, 33)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (6, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 6, 34)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (7, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 7, 35)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (8, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 8, 36)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (9, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 9, 37)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (10, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 10, 38)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (11, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 11, 39)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (12, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 12, 40)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (13, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 13, 41)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (14, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 14, 42)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (15, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 15, 43)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (16, N'MSSQL', CAST(N'2022-05-15T00:40:26.000' AS DateTime), 16, 44)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (17, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 17, 29)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (18, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 18, 35)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (19, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 19, 45)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (20, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 20, 46)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (21, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 21, 47)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (22, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 22, 48)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (23, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 23, 49)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (24, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 24, 50)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (25, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 25, 51)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (26, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 26, 52)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (27, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 27, 53)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (28, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 28, 54)
INSERT [dbo].[LinkResidence] ([L_Residence_SQN], [L_Residence_RSRC], [L_Residence_LDTS], [H_Locations_SQN], [H_Customers_SQN]) VALUES (29, N'Oracle', CAST(N'2022-05-15T00:41:10.000' AS DateTime), 29, 55)
SET IDENTITY_INSERT [dbo].[LinkResidence] OFF
GO
SET IDENTITY_INSERT [dbo].[LinkSales] ON 

INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (1, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 26, 30, 1)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (2, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 28, 34, 1)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (3, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 31, 33, 3)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (4, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 32, 37, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (5, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 27, 32, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (6, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 29, 29, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (7, N'MSSQL', CAST(N'2022-05-14T01:56:25.000' AS DateTime), 30, 39, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (8, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 1, 55, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (9, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 2, 51, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (10, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 3, 49, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (11, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 4, 48, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (12, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 5, 55, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (13, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 6, 55, 1)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (14, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 7, 35, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (15, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 8, 35, 3)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (16, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 9, 48, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (17, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 10, 50, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (18, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 11, 46, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (19, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 12, 48, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (20, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 13, 35, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (21, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 14, 48, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (22, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 15, 53, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (23, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 16, 51, 3)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (24, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 17, 48, 3)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (25, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 18, 49, 1)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (26, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 19, 52, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (27, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 20, 35, 2)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (28, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 21, 29, 1)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (29, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 22, 45, 3)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (30, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 23, 49, 3)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (31, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 24, 47, 4)
INSERT [dbo].[LinkSales] ([L_Sales_SQN], [L_Sales_RSRC], [L_Sales_LDTS], [H_Computer_SQN], [H_Customer_SQN], [H_Purpose_of_sale_SQN]) VALUES (32, N'Oracle', CAST(N'2022-05-14T01:56:24.000' AS DateTime), 25, 48, 4)
SET IDENTITY_INSERT [dbo].[LinkSales] OFF
GO
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (451, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'Processors')
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (452, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'Graphics Cards')
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (453, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'Motherboards')
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (454, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'Memory')
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (455, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'Hard Drives')
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (456, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'Solid State Drives')
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (457, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'Power Supplies')
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (458, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'Cases')
INSERT [dbo].[SatCategories] ([H_Categories_SQN], [S_Categories_LDTS], [S_Categories_RSRC], [CategoryName]) VALUES (459, CAST(N'2022-05-14T01:14:26.000' AS DateTime), N'MSSQL', N'CPU Coolers')
GO
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (1, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (2, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (3, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (4, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2021)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (5, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (6, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (7, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (8, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (9, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2020)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (10, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (11, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (12, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (13, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2020)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (14, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (15, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2019)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (16, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2019)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (17, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (18, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (19, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (20, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (21, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (22, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2012)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (23, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (24, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2014)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (25, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (26, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (27, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (28, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2020)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (29, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (30, CAST(N'2022-05-14T01:15:09.000' AS DateTime), N'MSSQL', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (31, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (32, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (33, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2012)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (34, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (35, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2014)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (36, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2013)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (37, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2014)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (38, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (39, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (40, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2016)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (41, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2013)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (42, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (43, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (44, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (45, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (46, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (47, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2014)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (48, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (49, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (50, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (51, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2015)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (52, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2014)
INSERT [dbo].[SatComponents] ([H_Components_SQN], [S_Components_LDTS], [S_Components_RSRC], [LaunchYear]) VALUES (53, CAST(N'2022-05-14T01:15:28.000' AS DateTime), N'Oracle', 2017)
GO
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (1, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 5, N'Processors: Ryzen 3 1200 Graphics Cards: GeForce G', CAST(N'2011-08-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (1, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 5, N'Processors: Ryzen 3 1200 Graphics Cards: GeForce G', CAST(N'2011-08-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (2, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 2, N'Processors: Ryzen 3 1200 Graphics Cards: Strix RX ', CAST(N'2030-09-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (2, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 2, N'Processors: Ryzen 3 1200 Graphics Cards: Strix RX ', CAST(N'2030-09-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (3, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 2, N'Processors: i3-8350K Graphics Cards: Strix RX 470 ', CAST(N'2029-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (3, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 2, N'Processors: i3-8350K Graphics Cards: Strix RX 470 ', CAST(N'2029-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (4, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 3, N'Processors: i5-6402P Graphics Cards: GeForce GTX 1', CAST(N'2017-02-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (4, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 3, N'Processors: i5-6402P Graphics Cards: GeForce GTX 1', CAST(N'2017-02-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (5, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 3, N'Processors: i3-8350K Graphics Cards: GeForce GTX 1', CAST(N'2021-05-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (5, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 3, N'Processors: i3-8350K Graphics Cards: GeForce GTX 1', CAST(N'2021-05-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (6, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 1, N'Processors: i3-7320 Graphics Cards: GeForce GTX 10', CAST(N'2005-11-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (6, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 1, N'Processors: i3-7320 Graphics Cards: GeForce GTX 10', CAST(N'2005-11-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (7, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 1, N'Processors: i3-7320 Graphics Cards: GeForce GTX 10', CAST(N'2012-01-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (8, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 4, N'Processors: A4-4020 Graphics Cards: GeForce GTX 10', CAST(N'2012-09-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (8, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 4, N'Processors: A4-4020 Graphics Cards: GeForce GTX 10', CAST(N'2012-09-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (9, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 1, N'Processors: i3-7320 Graphics Cards: Strix RX 470 M', CAST(N'2007-05-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (9, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 1, N'Processors: i3-7320 Graphics Cards: Strix RX 470 M', CAST(N'2007-05-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (10, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 1, N'Processors: i3-7320 Graphics Cards: Strix RX 470 M', CAST(N'2001-08-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (10, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 1, N'Processors: i3-7320 Graphics Cards: Strix RX 470 M', CAST(N'2001-08-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (11, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 5, N'Processors: i5-6402P Graphics Cards: GeForce GTX 1', CAST(N'2010-12-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (11, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 5, N'Processors: i5-6402P Graphics Cards: GeForce GTX 1', CAST(N'2010-12-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (12, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 1, N'Processors: Ryzen 3 1200 Graphics Cards: GeForce G', CAST(N'2006-05-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (12, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 1, N'Processors: Ryzen 3 1200 Graphics Cards: GeForce G', CAST(N'2006-05-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (13, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 3, N'Processors: i5-6402P Graphics Cards: GeForce GTX 1', CAST(N'2002-06-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (14, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 3, N'Processors: i5-6402P Graphics Cards: GeForce GTX 1', CAST(N'2006-08-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (14, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 3, N'Processors: i5-6402P Graphics Cards: GeForce GTX 1', CAST(N'2006-08-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (15, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 4, N'Processors: i3-7320 Graphics Cards: GeForce GTX 10', CAST(N'2018-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (15, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 4, N'Processors: i3-7320 Graphics Cards: GeForce GTX 10', CAST(N'2018-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (16, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 3, N'Processors: FX-9590 Graphics Cards: GeForce GTX 10', CAST(N'2029-04-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (16, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 3, N'Processors: FX-9590 Graphics Cards: GeForce GTX 10', CAST(N'2029-04-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (17, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 2, N'Processors: i5-3570K Graphics Cards: GeForce GTX 1', CAST(N'2010-12-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (17, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 2, N'Processors: i5-3570K Graphics Cards: GeForce GTX 1', CAST(N'2010-12-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (18, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 3, N'Processors: A4-4020 Graphics Cards: GeForce GTX 10', CAST(N'2028-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (18, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 3, N'Processors: A4-4020 Graphics Cards: GeForce GTX 10', CAST(N'2028-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (19, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 2, N'Processors: A4-4020 Graphics Cards: Strix RX 470 M', CAST(N'2025-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (19, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 2, N'Processors: A4-4020 Graphics Cards: Strix RX 470 M', CAST(N'2025-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (20, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 4, N'Processors: i3-7320 Graphics Cards: GeForce GTX 10', CAST(N'2004-06-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (21, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 4, N'Processors: i3-7320 Graphics Cards: Strix RX 470 M', CAST(N'2001-01-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (22, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 4, N'Processors: i3-8350K Graphics Cards: GeForce GTX 1', CAST(N'2002-05-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (22, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 4, N'Processors: i3-8350K Graphics Cards: GeForce GTX 1', CAST(N'2002-05-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (23, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 4, N'Processors: A4-4020 Graphics Cards: GeForce GTX 10', CAST(N'2012-06-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (24, CAST(N'2022-05-14T01:35:09.000' AS DateTime), N'Oracle', 1, N'Processors: i5-4460 Graphics Cards: Strix RX 470 M', CAST(N'2031-05-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (24, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 1, N'Processors: i5-4460 Graphics Cards: Strix RX 470 M', CAST(N'2031-05-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (25, CAST(N'2022-05-14T01:38:49.000' AS DateTime), N'Oracle', 2, N'Processors: Ryzen 3 1200 Graphics Cards: Strix RX ', CAST(N'2012-06-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (26, CAST(N'2022-05-14T01:28:57.000' AS DateTime), N'MSSQL', 3, N'Sistem Desktop PC Powered by ASUS cu procesor AMD Ryzen™ 5 5600G, 16GB DDR4, 520GB SSD, Wi-Fi, No OS                                                                                                                                                                                                                                                                                                                                                                                                                ', CAST(N'2021-03-12' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (27, CAST(N'2022-05-14T01:28:57.000' AS DateTime), N'MSSQL', 3, N'Computer IntelCore i7 6800, 32 GB RAM DDR3, 2TB Hard, 240 GB SSD, Geforce GTX 1070, Windows 10 Pro                                                                                                                                                                                                                                                                                                                                                                                                                  ', CAST(N'2021-03-20' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (28, CAST(N'2022-05-14T01:28:57.000' AS DateTime), N'MSSQL', 2, N'Desktop Intel® Core™ i5-6500 3.2 Ghz, 8 gb ddr4, hdd 500 gb, Graphics Radeon RX 480                                                                                                                                                                                                                                                                                                                                                                                                                                 ', CAST(N'2021-04-08' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (29, CAST(N'2022-05-14T01:28:57.000' AS DateTime), N'MSSQL', 1, N'Sistem PC Cyan Intel Core i5, 500GB HDD, 8GB DDR3, GeForce GTX 1070                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', CAST(N'2021-04-19' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (30, CAST(N'2022-05-14T01:28:57.000' AS DateTime), N'MSSQL', 2, N'Set sistem PC Mid Tower, Procesor Intel Core I5, RAM 8GB, 2TB HDD, Bluelight & camera web, multicolor                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2021-04-23' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (31, CAST(N'2022-05-14T01:28:57.000' AS DateTime), N'MSSQL', 1, N'Desktop PC Office, Intel® Core™ i5-6500, 8GB RAM DDR4, M.2 board, OS: Linux                                                                                                                                                                                                                                                                                                                                                                                                                                         ', CAST(N'2021-04-30' AS Date))
INSERT [dbo].[SatComputers] ([H_Computers_SQN], [S_Computers_LDTS], [S_Computers_RSRC], [Warrantee], [Description], [Created]) VALUES (32, CAST(N'2022-05-14T01:28:57.000' AS DateTime), N'MSSQL', 2, N'Computer Intel® Core™ Processor I5 - 3.10GHz - 3.4GHz Turbo, 4GB DDR3, 500GB Hard Disck, DVD-Rom                                                                                                                                                                                                                                                                                                                                                                                                                    ', CAST(N'2021-05-05' AS Date))
GO
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (29, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'MasterCard', N'03764 89 20 78', N'MonikaKohler@mastercard.com', 1)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (29, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'MasterCard', N'+1 313 123 4240', N'jack.finley@mastercard.com', 1)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (30, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Frank Glockner', N'07345 53 63 34', N'FrankGlockner@dayrep.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (31, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Mathias Frey', N'0660 501 62 09', N'MathiasFrey@teleworm.us', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (32, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Lucas Lange', N'0650 583 00 65', N'LucasLange@armyspy.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (33, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Anna Bachmeier', N'0660 959 55 56', N'AnnaBachmeier@armyspy.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (34, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Leah Maier', N'0680 538 95 34', N'LeahMaier@teleworm.us', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (35, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Oracle', N'+1 716 123 4485', N'yolando.wilkerson@oracle.com', 1)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (35, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Oracle', N'+1 716 123 4485', N'yolando.wilk@oracle.com', 1)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (36, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Cantemir Turcu', N'0699 816 94 20', N'ristrate@yahoo.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (37, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Florentin Radulescu', N'0777401530', N'florin.radulescu12@yahoo.ro', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (38, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Amelia Cazacu', N'0798777327', N'AmCaz91@gmail.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (39, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Valentin Pop', N'0725099074', N'pop.valentin@yahoo.ro', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (40, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Teodata Angelo', N'0374 2886123', N'TeodataAngelo@rhyta.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (41, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Lorenza Iadanza', N'0341 7475720', N'LorenzaIadanza@armyspy.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (42, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Rolando Rizzo', N'0327 4294245', N'RolandoRizzo@dayrep.com', 1)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (43, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Maurizia Lorenzo', N'0324 2713294', N'MauriziaLorenzo@armyspy.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (44, CAST(N'2022-05-14T01:18:48.000' AS DateTime), CAST(N'2022-05-14T01:18:48.000' AS DateTime), N'MSSQL', N'Martino Udinesi', N'0390 4643028', N'MartinoUdinesi@armyspy.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (45, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'GameStop', N'+91 80 012 4809', N'yo.ball@gamestopcorp.com', 1)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (46, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Emerson Electric', N'+1 219 123 4142', N'christian.cage@emerson.com', 1)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (47, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Jaxon Ross', N'650 123 1234', N'jaxon.ross@example.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (48, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Liam Henderson', N'650 123 2234', N'liam.henderson@example.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (49, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Jackson Coleman', N'650 123 3234', N'jack.coleman@example.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (50, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Callum Jenkins', N'650 123 4234', N'callum.jenkins@example.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (51, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Caleb Diaz', N'650 121 2019', N'caleb.diaz@example.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (52, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Kian Griffin', N'650 121 2034', N'kian.griffin@example.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (53, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Sonny Russell', N'650 121 1234', N'sonny.russell@example.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (54, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Ibrahim Alexander', N'650 127 1634', N'ibrahim.alex@example.com', 0)
INSERT [dbo].[SatCustomers] ([H_Customers_SQN], [S_Customers_LDTS], [S_Customers_LEDTS], [S_Customers_RSRC], [Name], [Phone], [Email], [Person_or_Company]) VALUES (55, CAST(N'2022-05-14T01:54:02.000' AS DateTime), CAST(N'2022-05-14T01:54:02.000' AS DateTime), N'Oracle', N'Felix Bryant', N'650 127 1734', N'felix.bryant@example.com', 0)
GO
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (1, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Thüringen', N'Germany')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (2, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Bayern', N'Germany')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (3, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Vorarlberg', N'Austria')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (4, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Wien', N'Austria')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (5, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Steiermark', N'Austria')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (6, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Steiermark', N'Austria')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (7, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Vorarlberg', N'Austria')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (8, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Fete?ti', N'Romania')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (9, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Bucuresti', N'Romania')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (10, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Suceava', N'Romania')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (11, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Sacueni', N'Romania')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (12, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Torino', N'Italy')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (13, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Novara', N'Italy')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (14, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Chieti', N'Italy')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (15, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Avellino', N'Italy')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (16, CAST(N'2022-05-14T01:22:07.000' AS DateTime), N'MSSQL', N'Caltanissetta', N'Italy')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (17, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Roma', N'Italy')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (18, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Venice', N'Italy')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (19, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Sydney', N'Australia')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (20, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Singapore', N'Singapore')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (21, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'London', N'United Kingdom')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (22, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Oxford', N'United Kingdom')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (23, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Stretford', N'United Kingdom')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (24, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Munich', N'Germany')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (25, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Sao Paulo', N'Brazil')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (26, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Geneva', N'Switzerland')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (27, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Bern', N'Switzerland')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (28, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Utrecht', N'Netherlands')
INSERT [dbo].[SatLocations] ([H_Locations_SQN], [S_Locations_LDTS], [S_Locations_RSRC], [City], [Country]) VALUES (29, CAST(N'2022-05-14T01:22:22.000' AS DateTime), N'Oracle', N'Mexico City', N'Mexico')
GO
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (1, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-02' AS Date), 192, 50)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (1, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-02' AS Date), 192, 50)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (2, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-05' AS Date), 213, 35)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (2, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-05' AS Date), 213, 35)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (3, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-07' AS Date), 317, 20)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (3, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-07' AS Date), 317, 20)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (4, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-10' AS Date), 280, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (4, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-10' AS Date), 280, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (5, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-12' AS Date), 320, 3)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (5, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-12' AS Date), 320, 3)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (6, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-06' AS Date), 20, 10)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (6, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-06' AS Date), 20, 10)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (7, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-07' AS Date), 103, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (7, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-07' AS Date), 103, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (8, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-10' AS Date), 47, 1)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (8, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-10' AS Date), 47, 1)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (9, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-15' AS Date), 44.900001525878906, 4)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (9, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-15' AS Date), 44.900001525878906, 4)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (10, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-16' AS Date), 169.69999694824219, 4)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (10, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-16' AS Date), 169.69999694824219, 4)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (11, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-20' AS Date), 77, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (11, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-20' AS Date), 77, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (12, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-19' AS Date), 39.450000762939453, 4)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (12, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-19' AS Date), 39.450000762939453, 4)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (13, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-19' AS Date), 42, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (13, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-19' AS Date), 42, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (14, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-19' AS Date), 42, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (14, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-19' AS Date), 42, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (15, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-20' AS Date), 50, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (15, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-20' AS Date), 50, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (16, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-15' AS Date), 80, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (16, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-15' AS Date), 80, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (17, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-15' AS Date), 65.80999755859375, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (17, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-15' AS Date), 65.80999755859375, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (18, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-24' AS Date), 47, 12)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (18, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-24' AS Date), 47, 12)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (19, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-22' AS Date), 47, 8)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (19, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-22' AS Date), 47, 8)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (20, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-25' AS Date), 45.229999542236328, 3)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (20, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-25' AS Date), 45.229999542236328, 3)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (21, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-02-25' AS Date), 115, 7)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (21, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-02-25' AS Date), 115, 7)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (22, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-03-02' AS Date), 420, 3)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (22, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-03-02' AS Date), 420, 3)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (23, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-03-04' AS Date), 639, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (23, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-03-04' AS Date), 639, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (24, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-03-04' AS Date), 158, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (24, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-03-04' AS Date), 158, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (25, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-03-05' AS Date), 77, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (25, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-03-05' AS Date), 77, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (26, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-03-05' AS Date), 139, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (26, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-03-05' AS Date), 139, 2)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (27, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-03-07' AS Date), 89.5, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (27, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-03-07' AS Date), 89.5, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (28, CAST(N'2022-05-15T00:46:25.000' AS DateTime), N'MSSQL', CAST(N'2021-03-07' AS Date), 181, 3)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (28, CAST(N'2022-05-15T00:51:10.000' AS DateTime), N'MSSQL', CAST(N'2021-03-07' AS Date), 181, 3)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (29, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2015-08-17' AS Date), 8443, 100)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (30, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2005-12-17' AS Date), 10383, 50)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (31, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2011-10-18' AS Date), 19409, 23)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (32, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2013-09-14' AS Date), 80, 45)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (33, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2007-12-15' AS Date), 6441, 5)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (34, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2017-05-18' AS Date), 17849, 270)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (35, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2020-02-16' AS Date), 13583, 216)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (36, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2013-01-19' AS Date), 9216, 138)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (37, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2010-03-19' AS Date), 14873, 177)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (38, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2018-03-18' AS Date), 13969, 500)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (39, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2013-10-16' AS Date), 14473, 199)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (40, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2001-09-17' AS Date), 16184, 840)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (41, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2020-02-19' AS Date), 19869, 609)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (42, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2017-01-17' AS Date), 7141, 986)
INSERT [dbo].[SatPurchase] ([L_Purchase_SQN], [S_Purchase_LDTS], [S_Purchase_RSRC], [Date], [Price], [Amount]) VALUES (43, CAST(N'2022-05-15T00:51:20.000' AS DateTime), N'Oracle', CAST(N'2020-12-16' AS Date), 16819, 232)
GO
INSERT [dbo].[SatPurposeOfSale] ([H_Purpose_of_sale_SQN], [S_Purpose_of_sale_LDTS], [S_Purpose_of_sale_RSRC], [PurposeName]) VALUES (1, CAST(N'2022-05-14T01:22:46.000' AS DateTime), N'MSSQL', N'Home')
INSERT [dbo].[SatPurposeOfSale] ([H_Purpose_of_sale_SQN], [S_Purpose_of_sale_LDTS], [S_Purpose_of_sale_RSRC], [PurposeName]) VALUES (2, CAST(N'2022-05-14T01:22:46.000' AS DateTime), N'MSSQL', N'Gaming')
INSERT [dbo].[SatPurposeOfSale] ([H_Purpose_of_sale_SQN], [S_Purpose_of_sale_LDTS], [S_Purpose_of_sale_RSRC], [PurposeName]) VALUES (3, CAST(N'2022-05-14T01:22:46.000' AS DateTime), N'MSSQL', N'Business')
INSERT [dbo].[SatPurposeOfSale] ([H_Purpose_of_sale_SQN], [S_Purpose_of_sale_LDTS], [S_Purpose_of_sale_RSRC], [PurposeName]) VALUES (4, CAST(N'2022-05-14T01:22:46.000' AS DateTime), N'MSSQL', N'Programming')
GO
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (1, CAST(N'2022-05-15T00:51:38.000' AS DateTime), N'MSSQL', CAST(N'2021-04-22T00:00:00.000' AS DateTime), 1, 1400)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (1, CAST(N'2022-05-15T00:59:08.000' AS DateTime), N'MSSQL', CAST(N'2021-04-22T00:00:00.000' AS DateTime), 1, 1400)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (2, CAST(N'2022-05-15T00:51:38.000' AS DateTime), N'MSSQL', CAST(N'2021-05-12T00:00:00.000' AS DateTime), 1, 900)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (2, CAST(N'2022-05-15T00:59:08.000' AS DateTime), N'MSSQL', CAST(N'2021-05-12T00:00:00.000' AS DateTime), 1, 900)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (3, CAST(N'2022-05-15T00:51:38.000' AS DateTime), N'MSSQL', CAST(N'2021-05-02T00:00:00.000' AS DateTime), 1, 1500)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (3, CAST(N'2022-05-15T00:59:08.000' AS DateTime), N'MSSQL', CAST(N'2021-05-02T00:00:00.000' AS DateTime), 1, 1500)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (4, CAST(N'2022-05-15T00:51:38.000' AS DateTime), N'MSSQL', CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 2000)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (4, CAST(N'2022-05-15T00:59:08.000' AS DateTime), N'MSSQL', CAST(N'2021-05-08T00:00:00.000' AS DateTime), 1, 2000)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (5, CAST(N'2022-05-15T00:51:38.000' AS DateTime), N'MSSQL', CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (5, CAST(N'2022-05-15T00:59:08.000' AS DateTime), N'MSSQL', CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (6, CAST(N'2022-05-15T00:51:38.000' AS DateTime), N'MSSQL', CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1750)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (6, CAST(N'2022-05-15T00:59:08.000' AS DateTime), N'MSSQL', CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1750)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (7, CAST(N'2022-05-15T00:51:38.000' AS DateTime), N'MSSQL', CAST(N'2021-04-29T00:00:00.000' AS DateTime), 1, 1500)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (7, CAST(N'2022-05-15T00:59:08.000' AS DateTime), N'MSSQL', CAST(N'2021-04-29T00:00:00.000' AS DateTime), 1, 1500)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (8, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2009-09-19T00:00:00.000' AS DateTime), 1, 4637.10009765625)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (9, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2021-10-20T00:00:00.000' AS DateTime), 1, 2604.280029296875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (10, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2020-05-19T00:00:00.000' AS DateTime), 1, 1441.6700439453125)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (11, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2005-03-19T00:00:00.000' AS DateTime), 1, 1790.77001953125)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (12, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2009-06-20T00:00:00.000' AS DateTime), 1, 2212.18994140625)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (13, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2026-11-20T00:00:00.000' AS DateTime), 1, 2469.43994140625)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (14, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2020-01-20T00:00:00.000' AS DateTime), 67, 1804.1199951171875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (15, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2016-09-20T00:00:00.000' AS DateTime), 22, 2186.830078125)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (16, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2017-05-20T00:00:00.000' AS DateTime), 1, 3530.469970703125)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (17, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2018-08-19T00:00:00.000' AS DateTime), 1, 2217.47998046875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (18, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2021-12-19T00:00:00.000' AS DateTime), 39, 1076.199951171875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (19, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2019-05-19T00:00:00.000' AS DateTime), 1, 1951.760009765625)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (20, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2008-06-20T00:00:00.000' AS DateTime), 96, 2159.110107421875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (21, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2010-08-20T00:00:00.000' AS DateTime), 1, 4142.18017578125)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (22, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2007-05-19T00:00:00.000' AS DateTime), 1, 3105.800048828125)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (23, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2014-05-20T00:00:00.000' AS DateTime), 1, 4723.56982421875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (24, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2004-01-21T00:00:00.000' AS DateTime), 1, 1052.1500244140625)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (25, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2002-05-19T00:00:00.000' AS DateTime), 1, 2275.1298828125)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (26, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2014-05-19T00:00:00.000' AS DateTime), 1, 3651.989990234375)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (27, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2001-07-20T00:00:00.000' AS DateTime), 53, 4511.68017578125)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (28, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2019-01-20T00:00:00.000' AS DateTime), 98, 2433.10009765625)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (29, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2017-05-20T00:00:00.000' AS DateTime), 70, 1148.72998046875)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (30, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2007-07-19T00:00:00.000' AS DateTime), 1, 4746.68994140625)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (31, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2019-06-20T00:00:00.000' AS DateTime), 1, 1584.1099853515625)
INSERT [dbo].[SatSales] ([L_Sales_SQN], [S_Sales_LDTS], [S_Sales_RSRC], [Date], [Amount], [Price]) VALUES (32, CAST(N'2022-05-15T01:02:47.000' AS DateTime), N'Oracle', CAST(N'2009-07-19T00:00:00.000' AS DateTime), 1, 2394.35009765625)
GO
ALTER TABLE [dbo].[LinkAssembly]  WITH CHECK ADD  CONSTRAINT [FK_LinkAssembly_HubComponents] FOREIGN KEY([H_Components_SQN])
REFERENCES [dbo].[HubComponents] ([H_Components_SQN])
GO
ALTER TABLE [dbo].[LinkAssembly] CHECK CONSTRAINT [FK_LinkAssembly_HubComponents]
GO
ALTER TABLE [dbo].[LinkAssembly]  WITH CHECK ADD  CONSTRAINT [FK_LinkAssembly_HubComputers] FOREIGN KEY([H_Computers_SQN])
REFERENCES [dbo].[HubComputers] ([H_Computers_SQN])
GO
ALTER TABLE [dbo].[LinkAssembly] CHECK CONSTRAINT [FK_LinkAssembly_HubComputers]
GO
ALTER TABLE [dbo].[LinkCategoryOfComponent]  WITH CHECK ADD  CONSTRAINT [FK_LinkCategoryOfComponent_HubCategories] FOREIGN KEY([H_Categories_SQN])
REFERENCES [dbo].[HubCategories] ([H_Categories_SQN])
GO
ALTER TABLE [dbo].[LinkCategoryOfComponent] CHECK CONSTRAINT [FK_LinkCategoryOfComponent_HubCategories]
GO
ALTER TABLE [dbo].[LinkCategoryOfComponent]  WITH CHECK ADD  CONSTRAINT [FK_LinkCategoryOfComponent_HubComponents] FOREIGN KEY([H_Components_SQN])
REFERENCES [dbo].[HubComponents] ([H_Components_SQN])
GO
ALTER TABLE [dbo].[LinkCategoryOfComponent] CHECK CONSTRAINT [FK_LinkCategoryOfComponent_HubComponents]
GO
ALTER TABLE [dbo].[LinkPurchase]  WITH CHECK ADD  CONSTRAINT [FK_LinkPurchase_HubComponents] FOREIGN KEY([H_Components_SQN])
REFERENCES [dbo].[HubComponents] ([H_Components_SQN])
GO
ALTER TABLE [dbo].[LinkPurchase] CHECK CONSTRAINT [FK_LinkPurchase_HubComponents]
GO
ALTER TABLE [dbo].[LinkPurchase]  WITH CHECK ADD  CONSTRAINT [FK_LinkPurchase_HubManufacturers] FOREIGN KEY([H_Manufacturers_SQN])
REFERENCES [dbo].[HubManufacturers] ([H_Manufacturers_SQN])
GO
ALTER TABLE [dbo].[LinkPurchase] CHECK CONSTRAINT [FK_LinkPurchase_HubManufacturers]
GO
ALTER TABLE [dbo].[LinkResidence]  WITH CHECK ADD  CONSTRAINT [FK_LinkResidence_HubCustomers] FOREIGN KEY([H_Customers_SQN])
REFERENCES [dbo].[HubCustomers] ([H_Customers_SQN])
GO
ALTER TABLE [dbo].[LinkResidence] CHECK CONSTRAINT [FK_LinkResidence_HubCustomers]
GO
ALTER TABLE [dbo].[LinkResidence]  WITH CHECK ADD  CONSTRAINT [FK_LinkResidence_HubLocations] FOREIGN KEY([H_Locations_SQN])
REFERENCES [dbo].[HubLocations] ([H_Locations_SQN])
GO
ALTER TABLE [dbo].[LinkResidence] CHECK CONSTRAINT [FK_LinkResidence_HubLocations]
GO
ALTER TABLE [dbo].[LinkSales]  WITH CHECK ADD  CONSTRAINT [FK_LinkSales_HubComputers] FOREIGN KEY([H_Computer_SQN])
REFERENCES [dbo].[HubComputers] ([H_Computers_SQN])
GO
ALTER TABLE [dbo].[LinkSales] CHECK CONSTRAINT [FK_LinkSales_HubComputers]
GO
ALTER TABLE [dbo].[LinkSales]  WITH CHECK ADD  CONSTRAINT [FK_LinkSales_HubCustomers] FOREIGN KEY([H_Customer_SQN])
REFERENCES [dbo].[HubCustomers] ([H_Customers_SQN])
GO
ALTER TABLE [dbo].[LinkSales] CHECK CONSTRAINT [FK_LinkSales_HubCustomers]
GO
ALTER TABLE [dbo].[LinkSales]  WITH CHECK ADD  CONSTRAINT [FK_LinkSales_HubPurposeOfSale] FOREIGN KEY([H_Purpose_of_sale_SQN])
REFERENCES [dbo].[HubPurposeOfSale] ([H_Purpose_of_sale_SQN])
GO
ALTER TABLE [dbo].[LinkSales] CHECK CONSTRAINT [FK_LinkSales_HubPurposeOfSale]
GO
ALTER TABLE [dbo].[SatCategories]  WITH CHECK ADD  CONSTRAINT [FK_SatCategories_HubCategories] FOREIGN KEY([H_Categories_SQN])
REFERENCES [dbo].[HubCategories] ([H_Categories_SQN])
GO
ALTER TABLE [dbo].[SatCategories] CHECK CONSTRAINT [FK_SatCategories_HubCategories]
GO
ALTER TABLE [dbo].[SatComponents]  WITH CHECK ADD  CONSTRAINT [FK_SatComponents_HubComponents] FOREIGN KEY([H_Components_SQN])
REFERENCES [dbo].[HubComponents] ([H_Components_SQN])
GO
ALTER TABLE [dbo].[SatComponents] CHECK CONSTRAINT [FK_SatComponents_HubComponents]
GO
ALTER TABLE [dbo].[SatComputers]  WITH CHECK ADD  CONSTRAINT [FK_SatComputers_HubComputers] FOREIGN KEY([H_Computers_SQN])
REFERENCES [dbo].[HubComputers] ([H_Computers_SQN])
GO
ALTER TABLE [dbo].[SatComputers] CHECK CONSTRAINT [FK_SatComputers_HubComputers]
GO
ALTER TABLE [dbo].[SatCustomers]  WITH CHECK ADD  CONSTRAINT [FK_SatCustomers_HubCustomers] FOREIGN KEY([H_Customers_SQN])
REFERENCES [dbo].[HubCustomers] ([H_Customers_SQN])
GO
ALTER TABLE [dbo].[SatCustomers] CHECK CONSTRAINT [FK_SatCustomers_HubCustomers]
GO
ALTER TABLE [dbo].[SatLocations]  WITH CHECK ADD  CONSTRAINT [FK_SatLocations_HubLocations] FOREIGN KEY([H_Locations_SQN])
REFERENCES [dbo].[HubLocations] ([H_Locations_SQN])
GO
ALTER TABLE [dbo].[SatLocations] CHECK CONSTRAINT [FK_SatLocations_HubLocations]
GO
ALTER TABLE [dbo].[SatPurchase]  WITH CHECK ADD  CONSTRAINT [FK_SatPurchase_LinkPurchase] FOREIGN KEY([L_Purchase_SQN])
REFERENCES [dbo].[LinkPurchase] ([L_Purchase_SQN])
GO
ALTER TABLE [dbo].[SatPurchase] CHECK CONSTRAINT [FK_SatPurchase_LinkPurchase]
GO
ALTER TABLE [dbo].[SatPurposeOfSale]  WITH CHECK ADD  CONSTRAINT [FK_SatPurposeOfSale_HubPurposeOfSale] FOREIGN KEY([H_Purpose_of_sale_SQN])
REFERENCES [dbo].[HubPurposeOfSale] ([H_Purpose_of_sale_SQN])
GO
ALTER TABLE [dbo].[SatPurposeOfSale] CHECK CONSTRAINT [FK_SatPurposeOfSale_HubPurposeOfSale]
GO
ALTER TABLE [dbo].[SatSales]  WITH CHECK ADD  CONSTRAINT [FK_SatSales_LinkSales] FOREIGN KEY([L_Sales_SQN])
REFERENCES [dbo].[LinkSales] ([L_Sales_SQN])
GO
ALTER TABLE [dbo].[SatSales] CHECK CONSTRAINT [FK_SatSales_LinkSales]
GO
USE [master]
GO
ALTER DATABASE [PC_Builder_Company_DV] SET  READ_WRITE 
GO
