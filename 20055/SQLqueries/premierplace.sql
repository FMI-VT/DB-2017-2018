/****** Script for SelectTopNRows command from SSMS  ******/
CREATE TABLE [dbo].[PremierePlace](
[PlaceID] [int] NOT NULL,
[Name] [varchar](50) NOT NULL,
[Location] [varchar](50) NOT NULL,
CONSTRAINT [PK_Place] PRIMARY KEY CLUSTERED ([PlaceID] ASC)
WITH (IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON,
 ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT [PlaceNameUnique] UNIQUE NONCLUSTERED ([Name] ASC)
WITH (IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, 
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]);
