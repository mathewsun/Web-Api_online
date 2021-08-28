USE [Exchange]
GO
/****** Object:  StoredProcedure [dbo].[spAddEvent]    Script Date: 28.08.2021 12:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCreateEvent]
@userid nvarchar(450),
@type int,
@value decimal(38,20),
@comment nvarchar(450),
@whenDate datetime,
@currencyAcronim nvarchar(10)
AS
BEGIN

insert into Events (UserId, Type, Value, Comment, WhenDate, CurrencyAcronim)
values (@userid, @type, @value, @comment, @whenDate, @currencyAcronim)

END

