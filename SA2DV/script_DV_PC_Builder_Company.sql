USE [master]
GO
/****** Object:  Database [PC_Builder_Company_DV]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[HubCategories]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[HubComponents]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[HubComputers]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[HubCustomers]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[HubLocations]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[HubManufacturers]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[HubPurposeOfSale]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[LinkAssembly]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[LinkCategoryOfComponent]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[LinkPurchase]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[LinkResidence]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[LinkSales]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[SatCategories]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[SatComponents]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[SatComputers]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[SatCustomers]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[SatLocations]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[SatPurchase]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[SatPurposeOfSale]    Script Date: 5/14/2022 1:12:06 AM ******/
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
/****** Object:  Table [dbo].[SatSales]    Script Date: 5/14/2022 1:12:06 AM ******/
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
