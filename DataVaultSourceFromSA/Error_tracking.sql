-- don't forget to create this db before
USE [PC_Builder_Company_ErrorDb]
GO
/****** Object:  Table [dbo].[SSIS_PACKAGE_ERROR]    Script Date: 11/27/2012 11:19:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSIS_PACKAGE_ERROR]') AND type in (N'U'))
DROP TABLE [dbo].[SSIS_PACKAGE_ERROR]
GO
/****** Object:  Table [dbo].[SSIS_PACKAGE_ERROR]    Script Date: 11/27/2012 11:19:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSIS_PACKAGE_ERROR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SSIS_PACKAGE_ERROR](
	[EXECUTION_INSTANCE_GUID] [nvarchar](38) NOT NULL,
	[BUSINESS_KEY] [nvarchar](512) NOT NULL,
	[COMPONENT] [nvarchar](64) NOT NULL,
	[PHASE] [nvarchar](64) NOT NULL,
	[ERROR_CODE] [int] NOT NULL,
	[ERROR_COLUMN] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
