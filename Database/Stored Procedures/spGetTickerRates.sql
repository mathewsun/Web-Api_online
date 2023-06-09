ALTER PROCEDURE [dbo].[spGetTickerRates]
AS
BEGIN

select
rub.[Id]
,rub.[Acronim]
,rub.[Site]
,rub.[Buy]
,rub.[Sell]
,rub.[Date]
,rub.[IsUp]
from (
    select top 1 *
    from [Rates]
	Where [Acronim] = 'RUB'
    order by Id desc) rub

union all

select
eur.[Id]
,eur.[Acronim]
,eur.[Site]
,eur.[Buy]
,eur.[Sell]
,eur.[Date]
,eur.[IsUp]
from (
    select top 1 *
    from [Rates]
	Where [Acronim] = 'EUR'
    order by Id desc) eur

	union all

select
xau.[Id]
,xau.[Acronim]
,xau.[Site]
,xau.[Buy]
,xau.[Sell]
,xau.[Date]
,xau.[IsUp]
from (
    select top 1 *
    from [Rates]
	Where [Acronim] = 'XAU'
    order by Id desc) xau

	union all

select
pl.[Id]
,pl.[Acronim]
,pl.[Site]
,pl.[Buy]
,pl.[Sell]
,pl.[Date]
,pl.[IsUp]
from (
    select top 1 *
    from [Rates]
	Where [Acronim] = 'PL'
    order by Id desc) pl

	union all

select
xag.[Id]
,xag.[Acronim]
,xag.[Site]
,xag.[Buy]
,xag.[Sell]
,xag.[Date]
,xag.[IsUp]
from (
    select top 1 *
    from [Rates]
	Where [Acronim] = 'XAG'
    order by Id desc) xag

END
