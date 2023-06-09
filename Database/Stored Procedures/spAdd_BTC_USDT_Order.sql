ALTER PROCEDURE [dbo].[spAdd_BTC_USDT_Order]
@userid nvarchar(450),
@isBuy bit,
@price decimal(38,20),
@amount decimal(38,20),
@new_identity    INT    OUTPUT
AS
BEGIN

insert into BTC_USDT_OpenOrders (IsBuy, Price, Amount, CreateUserId)
values (@isBuy, @price, @amount, @userid)

END
