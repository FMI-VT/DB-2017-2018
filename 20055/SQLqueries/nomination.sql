/****** Script for SelectTopNRows command from SSMS  ******/
CREATE TABLE [dbo].[Nomination](
[NominationID] [int] NOT NULL,
[MovieID] [int] NOT NULL,
[CategoryID] [int] NOT NULL,
CONSTRAINT [PK_Nomination] PRIMARY KEY CLUSTERED ([NominationID] ASC)
WITH (IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON,
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]);
ALTER TABLE [dbo].[Nomination]  WITH CHECK ADD  CONSTRAINT [FK_Nomination_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])

ALTER TABLE [dbo].[Nomination] CHECK CONSTRAINT [FK_Nomination_Category]

ALTER TABLE [dbo].[Nomination]  WITH CHECK ADD  CONSTRAINT [FK_Nomination_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([MovieID])

ALTER TABLE [dbo].[Nomination] CHECK CONSTRAINT [FK_Nomination_Movies]
