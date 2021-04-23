ALTER PROCEDURE [dbo].[spGetUserWallets]
@userid nvarchar(450)
AS
BEGIN

--declare @acronim nvarchar(10)
--set @acronim = 'GPS'

SELECT w.[Id]
      ,w.[UserId]
      ,w.[Value]
      ,w.[WalletAddress]
	  ,w.CurrencyAcronim
  FROM [Wallets] w
  where w.[UserId] = @userid

END
