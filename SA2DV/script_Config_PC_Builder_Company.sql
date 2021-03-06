USE [master]
GO
/****** Object:  Database [PC_Builder_Company_Config]    Script Date: 4/12/2022 2:50:23 PM ******/
CREATE DATABASE [PC_Builder_Company_Config]
GO
USE [PC_Builder_Company_Config]
GO
/****** Object:  Table [dbo].[SSIS_PACKAGE_ERROR]    Script Date: 4/12/2022 2:50:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSIS_PACKAGE_ERROR](
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[BUSINESS_KEY] [nvarchar](512) NOT NULL,
	[COMPONENT] [nvarchar](64) NOT NULL,
	[PHASE] [nvarchar](64) NOT NULL,
	[ERROR_CODE] [int] NOT NULL,
	[ERROR_COLUMN] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PC_Builder_Company_Config] SET  READ_WRITE 
GO
