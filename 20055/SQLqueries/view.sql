CREATE VIEW [Movie] AS
SELECT MovieID, Name
FROM dbo.Movies
WHERE MovieID >= 1;

