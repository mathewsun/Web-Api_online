ALTER PROCEDURE [dbo].[spGet_BTC_USDT_ClosedOrders]
AS
BEGIN

select buco.* 
from   [BTC_USDT_ClosedOrders] buco
order by buco.ClosedDate desc

END
