USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[Conversations]    Script Date: 06/04/2011 10:41:42 ******/
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Articles]
GO
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Author]
GO
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Photos]
GO
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Articles]
GO
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Author]
GO
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Photos]
GO
DROP TABLE [insideWordDb].[Conversations]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Conversations](
	[ConversationId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[ArticleId] [bigint] NULL,
	[PhotoId] [bigint] NULL,
	[MemberId] [bigint] NULL,
	[IsHidden] [bit] NOT NULL,
 CONSTRAINT [PK_Conversations] PRIMARY KEY CLUSTERED 
(
	[ConversationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[Conversations]  WITH CHECK ADD  CONSTRAINT [FK_Conversations_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Conversations] CHECK CONSTRAINT [FK_Conversations_Articles]
GO
ALTER TABLE [insideWordDb].[Conversations]  WITH CHECK ADD  CONSTRAINT [FK_Conversations_Author] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Conversations] CHECK CONSTRAINT [FK_Conversations_Author]
GO
ALTER TABLE [insideWordDb].[Conversations]  WITH CHECK ADD  CONSTRAINT [FK_Conversations_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Conversations] CHECK CONSTRAINT [FK_Conversations_Photos]
GO
