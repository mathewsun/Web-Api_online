USE [Exchange]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTC_USDT_ClosedOrders](
	[ClosedOrderId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ClosedDate] [datetime] NOT NULL,
	[IsBuy] [bit] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[SoldUserId] [int] NOT NULL,
	[BoughtUserId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTC_USDT_OpenOrders](
	[OpenOrderId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsBuy] [bit] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[SellingUserId] [int] NOT NULL
) ON [PRIMARY]
GO
