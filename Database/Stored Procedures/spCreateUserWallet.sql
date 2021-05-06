ALTER PROCEDURE [dbo].[spCreateUserWallet]
@userid nvarchar(450),
@walletAddress nvarchar(max),
@currencyAcronim nvarchar(10),
@new_identity    INT    OUTPUT
AS
BEGIN

INSERT INTO Wallets (UserId, WalletAddress, CurrencyAcronim, Value)
VALUES (@userid, @walletAddress, @currencyAcronim, 0)

SELECT @new_identity = SCOPE_IDENTITY()

SELECT @new_identity AS id

RETURN

END
