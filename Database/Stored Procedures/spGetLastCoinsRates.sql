ALTER PROCEDURE [dbo].[spGetLastCoinsRates]
AS
BEGIN

select cr.* from   [CoinsRates] cr
inner join (SELECT [Acronim], [Site], Max([Date]) as dateres
FROM [web-api.online].[dbo].[CoinsRates]
group by Acronim, [Site]) as se
on se.[Acronim] = cr.[Acronim] and se.[Site] = cr.[Site] and se.dateres = cr.Date

END
