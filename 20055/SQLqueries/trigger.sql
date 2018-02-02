CREATE TRIGGER MovieCheck 
ON dbo.Movies 
AFTER INSERT, DELETE, UPDATE   
AS RAISERROR ('Notify Customer Relations', 16, 10);  
GO