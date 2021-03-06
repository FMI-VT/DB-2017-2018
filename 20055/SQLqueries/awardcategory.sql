/****** Script for SelectTopNRows command from SSMS  ******/
CREATE TABLE [dbo].[AwardCategory](
[CategoryID] [int] NOT NULL,
[Name] [varchar](50) NOT NULL,
CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([CategoryID] ASC)
WITH (IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON,
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT [NameCategoryUnique] UNIQUE NONCLUSTERED ([Name] ASC)
WITH (IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON,
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]);
