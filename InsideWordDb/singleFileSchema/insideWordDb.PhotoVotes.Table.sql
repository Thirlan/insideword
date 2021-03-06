USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[PhotoVotes]    Script Date: 06/04/2011 10:41:41 ******/
ALTER TABLE [insideWordDb].[PhotoVotes] DROP CONSTRAINT [FK_PhotoVotes_Members]
GO
ALTER TABLE [insideWordDb].[PhotoVotes] DROP CONSTRAINT [FK_PhotoVotes_Photos]
GO
ALTER TABLE [insideWordDb].[PhotoVotes] DROP CONSTRAINT [FK_PhotoVotes_Members]
GO
ALTER TABLE [insideWordDb].[PhotoVotes] DROP CONSTRAINT [FK_PhotoVotes_Photos]
GO
ALTER TABLE [insideWordDb].[PhotoVotes] DROP CONSTRAINT [DF_PhotoVotes_SystemEditDate]
GO
ALTER TABLE [insideWordDb].[PhotoVotes] DROP CONSTRAINT [DF_PhotoVotes_SystemCreateDate]
GO
DROP TABLE [insideWordDb].[PhotoVotes]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[PhotoVotes](
	[PhotoVoteId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL CONSTRAINT [DF_PhotoVotes_SystemEditDate]  DEFAULT ('0001-01-01 00:00:00.0000000'),
	[SystemCreateDate] [datetime2](7) NOT NULL CONSTRAINT [DF_PhotoVotes_SystemCreateDate]  DEFAULT ('0001-01-01 00:00:00.0000000'),
	[PhotoId] [bigint] NOT NULL,
	[MemberId] [bigint] NULL,
	[VoteWeight] [int] NOT NULL,
	[IsShadowVote] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[Text] [nvarchar](512) NOT NULL,
	[IsHidden] [bit] NOT NULL,
 CONSTRAINT [PK_PhotoVote] PRIMARY KEY CLUSTERED 
(
	[PhotoVoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_PhotoId] ON [insideWordDb].[PhotoVotes] 
(
	[PhotoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[PhotoVotes]  WITH CHECK ADD  CONSTRAINT [FK_PhotoVotes_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[PhotoVotes] CHECK CONSTRAINT [FK_PhotoVotes_Members]
GO
ALTER TABLE [insideWordDb].[PhotoVotes]  WITH CHECK ADD  CONSTRAINT [FK_PhotoVotes_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[PhotoVotes] CHECK CONSTRAINT [FK_PhotoVotes_Photos]
GO
