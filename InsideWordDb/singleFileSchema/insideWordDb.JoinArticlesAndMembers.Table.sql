USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndMembers]    Script Date: 06/04/2011 10:41:42 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] DROP CONSTRAINT [FK_JoinArticlesAndMembers_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] DROP CONSTRAINT [FK_JoinArticlesAndMembers_Members]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] DROP CONSTRAINT [FK_JoinArticlesAndMembers_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] DROP CONSTRAINT [FK_JoinArticlesAndMembers_Members]
GO
DROP TABLE [insideWordDb].[JoinArticlesAndMembers]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinArticlesAndMembers](
	[ArticleId] [bigint] NOT NULL,
	[MemberId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinArticlesAndMembers] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers]  WITH CHECK ADD  CONSTRAINT [FK_JoinArticlesAndMembers_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] CHECK CONSTRAINT [FK_JoinArticlesAndMembers_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers]  WITH CHECK ADD  CONSTRAINT [FK_JoinArticlesAndMembers_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] CHECK CONSTRAINT [FK_JoinArticlesAndMembers_Members]
GO
