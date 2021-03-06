USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[Memberships]    Script Date: 06/04/2011 10:41:43 ******/
ALTER TABLE [insideWordDb].[Memberships] DROP CONSTRAINT [FK_Memberships_Groups]
GO
ALTER TABLE [insideWordDb].[Memberships] DROP CONSTRAINT [FK_Memberships_Members]
GO
ALTER TABLE [insideWordDb].[Memberships] DROP CONSTRAINT [FK_Memberships_Groups]
GO
ALTER TABLE [insideWordDb].[Memberships] DROP CONSTRAINT [FK_Memberships_Members]
GO
DROP TABLE [insideWordDb].[Memberships]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Memberships](
	[MembershipId] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupId] [bigint] NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Memberships] PRIMARY KEY CLUSTERED 
(
	[MembershipId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[Memberships]  WITH CHECK ADD  CONSTRAINT [FK_Memberships_Groups] FOREIGN KEY([GroupId])
REFERENCES [insideWordDb].[Groups] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Memberships] CHECK CONSTRAINT [FK_Memberships_Groups]
GO
ALTER TABLE [insideWordDb].[Memberships]  WITH CHECK ADD  CONSTRAINT [FK_Memberships_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Memberships] CHECK CONSTRAINT [FK_Memberships_Members]
GO
