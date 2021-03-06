/****** Script for SelectTopNRows command from SSMS  ******/
CREATE TABLE [dbo].[Movies](
[MovieID] [int] NOT NULL,
[Name] [varchar](50) NOT NULL UNIQUE,
[Date] [datetime] NULL,
[PlaceID] [int] NOT NULL UNIQUE,
[Duration] [time](7) NOT NULL,
CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED ([MovieID] ASC)
WITH (IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON,
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT [MovieNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
WITH (IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON,
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]);

ALTER TABLE dbo.Movies
ADD CHECK (PlaceID<=5);

INSERT INTO dbo.Movies(MovieID, Name, Date, PlaceID, Duration)
VALUES
(1, 'Wonder Woman', '2017-06-15', '5', '02:21'),
(2, 'It', '2017-10-08', '2', '02:15'),
(3, 'Girls Trip', '2017-12-20', '1', '02:02'),
(4, 'The Greatest Showman', '2017-12-08', '4', '02:19'),
(5, 'Logan', '2017-03-01', '3', '02:21');
GO

DELETE FROM dbo.Movies
WHERE Name ='Wonder Woman';

UPDATE dbo.Movies
SET Name = 'Thor: Ragnarok (2017)', Date= '2017-10-10'
WHERE MovieID = '5';

SELECT Name 
FROM dbo.Movies 
WHERE MovieID <= '3';

SELECT COUNT (MovieID) MoviePlace 
FROM dbo.Movies
WHERE MovieID > 1;

SELECT Max(Duration) 
AS LongestFilm
FROM dbo.Movies;

SELECT Min(Date) 
AS EarliestDate
FROM dbo.Movies;

SELECT COUNT(MovieID), Name
FROM dbo.Movies
GROUP BY Name
HAVING COUNT(MovieID) > 4;

SELECT MovieID, GenreID, Duration
FROM dbo.Movies
INNER JOIN dbo.Genre
ON dbo.Movies.MovieID = dbo.Genre.GenreID;

SELECT MovieID,Name, Date, Duration
FROM dbo.Movies
ORDER BY
(CASE
	WHEN Date IS NULL THEN Duration
	ELSE Date
END);






