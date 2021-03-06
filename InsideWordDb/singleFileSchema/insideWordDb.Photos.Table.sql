USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[Photos]    Script Date: 06/04/2011 10:41:41 ******/
ALTER TABLE [insideWordDb].[Photos] DROP CONSTRAINT [FK_Photos_Members]
GO
ALTER TABLE [insideWordDb].[Photos] DROP CONSTRAINT [FK_Photos_Photos]
GO
ALTER TABLE [insideWordDb].[Photos] DROP CONSTRAINT [FK_Photos_Members]
GO
ALTER TABLE [insideWordDb].[Photos] DROP CONSTRAINT [FK_Photos_Photos]
GO
ALTER TABLE [insideWordDb].[Photos] DROP CONSTRAINT [DF_Photos_SystemEditDate]
GO
ALTER TABLE [insideWordDb].[Photos] DROP CONSTRAINT [DF_Photos_SystemCreateDate]
GO
DROP TABLE [insideWordDb].[Photos]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Photos](
	[PhotoId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL CONSTRAINT [DF_Photos_SystemEditDate]  DEFAULT ('0001-01-01 00:00:00.0000000'),
	[SystemCreateDate] [datetime2](7) NOT NULL CONSTRAINT [DF_Photos_SystemCreateDate]  DEFAULT ('0001-01-01 00:00:00.0000000'),
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[ImageUrl] [nvarchar](256) NOT NULL,
	[PhysicalPath] [nvarchar](256) NOT NULL,
	[IsThumbnail] [bit] NOT NULL,
	[ImageType] [int] NOT NULL,
	[OriginalId] [bigint] NULL,
	[Photographer] [nvarchar](64) NOT NULL,
	[MemberId] [bigint] NULL,
	[Caption] [nvarchar](128) NULL,
	[IsHidden] [bit] NOT NULL,
	[DisplayWidth] [smallint] NULL,
	[DisplayHeight] [smallint] NULL,
	[IgnoreFlags] [bit] NOT NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Photos] CHECK CONSTRAINT [FK_Photos_Members]
GO
ALTER TABLE [insideWordDb].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Photos] FOREIGN KEY([OriginalId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
GO
ALTER TABLE [insideWordDb].[Photos] CHECK CONSTRAINT [FK_Photos_Photos]
GO
