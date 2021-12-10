USE [Exchange]
GO
/****** Object:  StoredProcedure [dbo].[CreateOutcomeTransaction]    Script Date: 12/10/2021 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[CreateOutcomeTransaction]
@id int OUTPUT,
@fromWalletId int,
@fromAddress nvarchar(max),
@toAddress nvarchar(max),
@value decimal(38,20),
@currencyAcronim nvarchar(10),
@state int
AS

BEGIN

INSERT INTO [Exchange].[dbo].[OutcomeTransactions] ( FromWalletId, FromAddress, ToAddress,
			Value, CreateDate, CurrencyAcronim, State, LastUpdateDate)
VALUES (@fromWalletId, @fromAddress, @toAddress, @value, GETDATE(), @currencyAcronim, 1, GETDATE())

SET @id = SCOPE_IDENTITY()
END

