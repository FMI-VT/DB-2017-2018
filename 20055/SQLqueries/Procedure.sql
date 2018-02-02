CREATE PROCEDURE MovieInfo
AS
SELECT Name AS MovieName,
MovieID AS FollowingMovie,
Duration AS MovieDuration,
Date AS DateOfFirstProjection
FROM dbo.Movies 
ORDER BY MovieID
GO

EXECUTE MovieInfo

