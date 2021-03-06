USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndCategories]    Script Date: 06/04/2011 10:41:43 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] DROP CONSTRAINT [FK_JoinCategoriesAndArticles_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] DROP CONSTRAINT [FK_JoinCategoriesAndArticles_Categories]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] DROP CONSTRAINT [FK_JoinCategoriesAndArticles_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] DROP CONSTRAINT [FK_JoinCategoriesAndArticles_Categories]
GO
DROP TABLE [insideWordDb].[JoinArticlesAndCategories]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinArticlesAndCategories](
	[CategoryId] [bigint] NOT NULL,
	[ArticleId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinArticlesAndCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ArticleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories]  WITH CHECK ADD  CONSTRAINT [FK_JoinCategoriesAndArticles_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] CHECK CONSTRAINT [FK_JoinCategoriesAndArticles_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories]  WITH CHECK ADD  CONSTRAINT [FK_JoinCategoriesAndArticles_Categories] FOREIGN KEY([CategoryId])
REFERENCES [insideWordDb].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] CHECK CONSTRAINT [FK_JoinCategoriesAndArticles_Categories]
GO
