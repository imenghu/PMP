USE [SFDATA]
GO

/****** Object:  Table [dbo].[inv_prod_in]    Script Date: 11/01/2019 10:23:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[inv_prod_in](
	[prod_in_id] [int] IDENTITY(1,1) NOT NULL,
	[depot_id] [int] NULL,
	[depot_name] [nvarchar](100) NULL,
	[prod_org_id] [int] NULL,
	[dep_org_id] [int] NULL,
	[dep_userid] [int] NULL,
	[mat_id] [int] NULL,
	[mat_code] [nvarchar](60) NULL,
	[mat_name] [nvarchar](200) NULL,
	[mat_spec] [nvarchar](100) NULL,
	[in_stnum] [decimal](18, 2) NULL,
	[in_stnum_unit] [nvarchar](60) NULL,
	[in_time] [datetime2](7) NULL,
	[prod_in_remarks] [nvarchar](200) NULL,
	[state] [nchar](1) NULL,
	[create_time] [datetime2](7) NULL,
	[update_time] [datetime2](7) NULL,
	[ProdDeptName] [varchar](50) NULL,
	[ProdUser] [varchar](50) NULL,
	[ProdUserName] [varchar](50) NULL,
	[CreateUser] [varchar](50) NULL,
	[CreateUserName] [varchar](50) NULL,
	[UpdateUser] [varchar](50) NULL,
	[UpdateUserName] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[CompanyName] [varchar](50) NULL,
 CONSTRAINT [PK_inv_prod_in] PRIMARY KEY CLUSTERED 
(
	[prod_in_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

