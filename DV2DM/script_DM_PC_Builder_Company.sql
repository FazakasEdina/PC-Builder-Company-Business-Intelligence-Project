USE [master]
GO
/****** Object:  Database [PC_Builder_Company_DM]    Script Date: 5/7/2022 11:28:02 PM ******/
CREATE DATABASE [PC_Builder_Company_DM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PC_Builder_Company_DM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PC_Builder_Company_DM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PC_Builder_Company_DM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PC_Builder_Company_DM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PC_Builder_Company_DM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PC_Builder_Company_DM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PC_Builder_Company_DM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET ARITHABORT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET  MULTI_USER 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PC_Builder_Company_DM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PC_Builder_Company_DM] SET QUERY_STORE = OFF
GO
USE [PC_Builder_Company_DM]
GO
/****** Object:  Table [dbo].[DimComponents]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimComponents](
	[SK_Components] [int] IDENTITY(1,1) NOT NULL,
	[BK_Components] [varchar](50) NULL,
	[CategoryName] [varchar](50) NULL,
	[LaunchYear] [int] NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_DimComponents] PRIMARY KEY CLUSTERED 
(
	[SK_Components] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimComputers]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimComputers](
	[SK_Computers] [int] IDENTITY(1,1) NOT NULL,
	[BK_Computers] [varchar](50) NULL,
	[Warrantee] [int] NULL,
	[Description] [nvarchar](512) NULL,
	[Created] [date] NULL,
 CONSTRAINT [PK_DimComputers] PRIMARY KEY CLUSTERED 
(
	[SK_Computers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCustomers]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCustomers](
	[SK_Customer] [int] IDENTITY(1,1) NOT NULL,
	[BK_Customer] [varchar](13) NULL,
	[Name] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](30) NULL,
	[Person_or_Company] [bit] NULL,
 CONSTRAINT [PK_DimCustomers] PRIMARY KEY CLUSTERED 
(
	[SK_Customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[SK_Date] [int] NOT NULL,
	[BK_FullDate] [date] NOT NULL,
	[DayNumberOfYear] [tinyint] NOT NULL,
	[MonthNumberOfYear] [tinyint] NOT NULL,
	[CalendarYear] [smallint] NOT NULL,
	[CalendarQuarter] [tinyint] NOT NULL,
	[EnglishMonthName] [nvarchar](10) NOT NULL,
	[EnglishDayNameOfWeek] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[SK_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLocations]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLocations](
	[SK_Locations] [int] IDENTITY(1,1) NOT NULL,
	[BK_Locations] [varchar](100) NULL,
	[City] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
 CONSTRAINT [PK_DimLocations] PRIMARY KEY CLUSTERED 
(
	[SK_Locations] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimManufacturers]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimManufacturers](
	[SK_Manufacturers] [int] IDENTITY(1,1) NOT NULL,
	[BK_Manifacturers] [varchar](50) NULL,
 CONSTRAINT [PK_DimManufacturers] PRIMARY KEY CLUSTERED 
(
	[SK_Manufacturers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPurposeOfSale]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPurposeOfSale](
	[SK_Purpose_of_sale] [int] IDENTITY(1,1) NOT NULL,
	[BK_Purpose_of_sale] [int] NULL,
	[PuproseName] [varchar](30) NULL,
 CONSTRAINT [PK_DimPurposeOfSale] PRIMARY KEY CLUSTERED 
(
	[SK_Purpose_of_sale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactAssembly]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactAssembly](
	[SK_Manufacturers] [int] NULL,
	[SK_Components] [int] NULL,
	[SK_Date] [int] NULL,
	[SK_Computers] [int] NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactSales]    Script Date: 5/7/2022 11:28:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactSales](
	[SK_Date] [int] NULL,
	[SK_Customers] [int] NULL,
	[SK_Purpose_of_sale] [int] NULL,
	[SK_Computers] [int] NULL,
	[SK_Locations] [int] NULL,
	[Amount] [int] NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactAssembly]  WITH CHECK ADD  CONSTRAINT [FK_FactAssembly_DimComponents] FOREIGN KEY([SK_Components])
REFERENCES [dbo].[DimComponents] ([SK_Components])
GO
ALTER TABLE [dbo].[FactAssembly] CHECK CONSTRAINT [FK_FactAssembly_DimComponents]
GO
ALTER TABLE [dbo].[FactAssembly]  WITH CHECK ADD  CONSTRAINT [FK_FactAssembly_DimComputers] FOREIGN KEY([SK_Computers])
REFERENCES [dbo].[DimComputers] ([SK_Computers])
GO
ALTER TABLE [dbo].[FactAssembly] CHECK CONSTRAINT [FK_FactAssembly_DimComputers]
GO
ALTER TABLE [dbo].[FactAssembly]  WITH CHECK ADD  CONSTRAINT [FK_FactAssembly_DimDate] FOREIGN KEY([SK_Date])
REFERENCES [dbo].[DimDate] ([SK_Date])
GO
ALTER TABLE [dbo].[FactAssembly] CHECK CONSTRAINT [FK_FactAssembly_DimDate]
GO
ALTER TABLE [dbo].[FactAssembly]  WITH CHECK ADD  CONSTRAINT [FK_FactAssembly_DimManufacturers] FOREIGN KEY([SK_Manufacturers])
REFERENCES [dbo].[DimManufacturers] ([SK_Manufacturers])
GO
ALTER TABLE [dbo].[FactAssembly] CHECK CONSTRAINT [FK_FactAssembly_DimManufacturers]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimComputers] FOREIGN KEY([SK_Computers])
REFERENCES [dbo].[DimComputers] ([SK_Computers])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimComputers]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimCustomers] FOREIGN KEY([SK_Customers])
REFERENCES [dbo].[DimCustomers] ([SK_Customer])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimCustomers]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimDate] FOREIGN KEY([SK_Date])
REFERENCES [dbo].[DimDate] ([SK_Date])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimDate]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimLocations] FOREIGN KEY([SK_Locations])
REFERENCES [dbo].[DimLocations] ([SK_Locations])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimLocations]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimPurposeOfSale] FOREIGN KEY([SK_Purpose_of_sale])
REFERENCES [dbo].[DimPurposeOfSale] ([SK_Purpose_of_sale])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimPurposeOfSale]
GO
USE [master]
GO
ALTER DATABASE [PC_Builder_Company_DM] SET  READ_WRITE 
GO
