/****** Script for SelectTopNRows command from SSMS  ******/
CREATE TABLE [dbo].[OscarAward](
[MovieID] [int] NOT NULL,
[CategoryID] [int] NOT NULL,
CONSTRAINT [PK_Award] PRIMARY KEY CLUSTERED ([MovieID] ASC)
WITH (IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, 
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]);

