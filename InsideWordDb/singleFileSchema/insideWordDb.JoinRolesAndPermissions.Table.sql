USE [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[JoinRolesAndPermissions]    Script Date: 06/04/2011 10:41:43 ******/
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] DROP CONSTRAINT [FK_JoinRolesAndPermissions_Permissions]
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] DROP CONSTRAINT [FK_JoinRolesAndPermissions_Roles]
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] DROP CONSTRAINT [FK_JoinRolesAndPermissions_Permissions]
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] DROP CONSTRAINT [FK_JoinRolesAndPermissions_Roles]
GO
DROP TABLE [insideWordDb].[JoinRolesAndPermissions]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinRolesAndPermissions](
	[RoleId] [bigint] NOT NULL,
	[PermissionId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinRolesAndRights] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions]  WITH CHECK ADD  CONSTRAINT [FK_JoinRolesAndPermissions_Permissions] FOREIGN KEY([PermissionId])
REFERENCES [insideWordDb].[Permissions] ([PermissionId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] CHECK CONSTRAINT [FK_JoinRolesAndPermissions_Permissions]
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions]  WITH CHECK ADD  CONSTRAINT [FK_JoinRolesAndPermissions_Roles] FOREIGN KEY([RoleId])
REFERENCES [insideWordDb].[Roles] ([RoleId])
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] CHECK CONSTRAINT [FK_JoinRolesAndPermissions_Roles]
GO
