USE [master]
GO
/****** Object:  Database [insideWordDb]    Script Date: 06/04/2011 10:36:56 ******/
CREATE DATABASE [insideWordDb] ON  PRIMARY 
( NAME = N'insideWordDb', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\insideWordDb.mdf' , SIZE = 20736KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'insideWordDb_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\insideWordDb_log.LDF' , SIZE = 1856KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [insideWordDb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [insideWordDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [insideWordDb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [insideWordDb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [insideWordDb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [insideWordDb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [insideWordDb] SET ARITHABORT OFF
GO
ALTER DATABASE [insideWordDb] SET AUTO_CLOSE ON
GO
ALTER DATABASE [insideWordDb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [insideWordDb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [insideWordDb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [insideWordDb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [insideWordDb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [insideWordDb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [insideWordDb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [insideWordDb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [insideWordDb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [insideWordDb] SET  ENABLE_BROKER
GO
ALTER DATABASE [insideWordDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [insideWordDb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [insideWordDb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [insideWordDb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [insideWordDb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [insideWordDb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [insideWordDb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [insideWordDb] SET  READ_WRITE
GO
ALTER DATABASE [insideWordDb] SET RECOVERY SIMPLE
GO
ALTER DATABASE [insideWordDb] SET  MULTI_USER
GO
ALTER DATABASE [insideWordDb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [insideWordDb] SET DB_CHAINING OFF
GO
USE [insideWordDb]
GO
/****** Object:  ForeignKey [FK_PhotoVotes_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[PhotoVotes] DROP CONSTRAINT [FK_PhotoVotes_Members]
GO
/****** Object:  ForeignKey [FK_PhotoVotes_Photos]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[PhotoVotes] DROP CONSTRAINT [FK_PhotoVotes_Photos]
GO
/****** Object:  ForeignKey [FK_PhotoScores_Photos]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[PhotoScores] DROP CONSTRAINT [FK_PhotoScores_Photos]
GO
/****** Object:  ForeignKey [FK_Members_Photos]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [FK_Members_Photos]
GO
/****** Object:  ForeignKey [FK_Photos_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Photos] DROP CONSTRAINT [FK_Photos_Members]
GO
/****** Object:  ForeignKey [FK_Photos_Photos]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Photos] DROP CONSTRAINT [FK_Photos_Photos]
GO
/****** Object:  ForeignKey [FK_ArticleVotes_Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleVotes] DROP CONSTRAINT [FK_ArticleVotes_Articles]
GO
/****** Object:  ForeignKey [FK_ArticleVotes_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleVotes] DROP CONSTRAINT [FK_ArticleVotes_Members]
GO
/****** Object:  ForeignKey [FK_ArticleTexts_Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleTexts] DROP CONSTRAINT [FK_ArticleTexts_Articles]
GO
/****** Object:  ForeignKey [FK_ArticleScores_Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleScores] DROP CONSTRAINT [FK_ArticleScores_Articles]
GO
/****** Object:  ForeignKey [FK_Articles_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Articles] DROP CONSTRAINT [FK_Articles_Members]
GO
/****** Object:  ForeignKey [FK_AlternateMemberIds_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[AlternateMemberIds] DROP CONSTRAINT [FK_AlternateMemberIds_Members]
GO
/****** Object:  ForeignKey [FK_AlternateArticleIds_Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[AlternateArticleIds] DROP CONSTRAINT [FK_AlternateArticleIds_Articles]
GO
/****** Object:  ForeignKey [FK_AlternateArticleIds_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[AlternateArticleIds] DROP CONSTRAINT [FK_AlternateArticleIds_Members]
GO
/****** Object:  ForeignKey [FK_ConversationVotes_Conversations]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ConversationVotes] DROP CONSTRAINT [FK_ConversationVotes_Conversations]
GO
/****** Object:  ForeignKey [FK_ConversationVotes_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ConversationVotes] DROP CONSTRAINT [FK_ConversationVotes_Members]
GO
/****** Object:  ForeignKey [FK_ConversationScores_Conversations]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ConversationScores] DROP CONSTRAINT [FK_ConversationScores_Conversations]
GO
/****** Object:  ForeignKey [FK_Conversations_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Articles]
GO
/****** Object:  ForeignKey [FK_Conversations_Author]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Author]
GO
/****** Object:  ForeignKey [FK_Conversations_Photos]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Photos]
GO
/****** Object:  ForeignKey [FK_Comments_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Comments] DROP CONSTRAINT [FK_Comments_Members]
GO
/****** Object:  ForeignKey [FK_Conversations_Comments]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Comments] DROP CONSTRAINT [FK_Conversations_Comments]
GO
/****** Object:  ForeignKey [FK_JoinPhotosAndMembers_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndMembers_Members]
GO
/****** Object:  ForeignKey [FK_JoinPhotosAndUsers_Photos]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndUsers_Photos]
GO
/****** Object:  ForeignKey [FK_JoinMembersAndMembers_From_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndMembers] DROP CONSTRAINT [FK_JoinMembersAndMembers_From_Members]
GO
/****** Object:  ForeignKey [FK_JoinMembersAndMembers_To_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndMembers] DROP CONSTRAINT [FK_JoinMembersAndMembers_To_Members]
GO
/****** Object:  ForeignKey [FK_JoinPhotosAndArticles_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndArticles_Articles]
GO
/****** Object:  ForeignKey [FK_JoinPhotosAndArticles_Photos]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndArticles_Photos]
GO
/****** Object:  ForeignKey [FK_JoinArticlesAndMembers_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] DROP CONSTRAINT [FK_JoinArticlesAndMembers_Articles]
GO
/****** Object:  ForeignKey [FK_JoinArticlesAndMembers_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] DROP CONSTRAINT [FK_JoinArticlesAndMembers_Members]
GO
/****** Object:  ForeignKey [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] DROP CONSTRAINT [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds]
GO
/****** Object:  ForeignKey [FK_JoinArticlesAndAlternateCategories_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] DROP CONSTRAINT [FK_JoinArticlesAndAlternateCategories_Articles]
GO
/****** Object:  ForeignKey [FK_Memberships_Groups]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Memberships] DROP CONSTRAINT [FK_Memberships_Groups]
GO
/****** Object:  ForeignKey [FK_Memberships_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Memberships] DROP CONSTRAINT [FK_Memberships_Members]
GO
/****** Object:  ForeignKey [FK_JoinCategoriesAndArticles_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] DROP CONSTRAINT [FK_JoinCategoriesAndArticles_Articles]
GO
/****** Object:  ForeignKey [FK_JoinCategoriesAndArticles_Categories]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] DROP CONSTRAINT [FK_JoinCategoriesAndArticles_Categories]
GO
/****** Object:  ForeignKey [FK_AlternateCategoryIds_AlternateCategoryIds]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[AlternateCategoryIds] DROP CONSTRAINT [FK_AlternateCategoryIds_AlternateCategoryIds]
GO
/****** Object:  ForeignKey [FK_AlternateCategoryIds_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[AlternateCategoryIds] DROP CONSTRAINT [FK_AlternateCategoryIds_Members]
GO
/****** Object:  ForeignKey [FK_Categories_Categories]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Categories] DROP CONSTRAINT [FK_Categories_Categories]
GO
/****** Object:  ForeignKey [FK_JoinMembershipsAndRoles_Memberships]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembershipsAndRoles] DROP CONSTRAINT [FK_JoinMembershipsAndRoles_Memberships]
GO
/****** Object:  ForeignKey [FK_JoinMembershipsAndRoles_Roles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembershipsAndRoles] DROP CONSTRAINT [FK_JoinMembershipsAndRoles_Roles]
GO
/****** Object:  ForeignKey [FK_Roles_Groups]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[Roles] DROP CONSTRAINT [FK_Roles_Groups]
GO
/****** Object:  ForeignKey [FK_Permissions_Groups]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[Permissions] DROP CONSTRAINT [FK_Permissions_Groups]
GO
/****** Object:  ForeignKey [FK_JoinRolesAndPermissions_Permissions]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] DROP CONSTRAINT [FK_JoinRolesAndPermissions_Permissions]
GO
/****** Object:  ForeignKey [FK_JoinRolesAndPermissions_Roles]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] DROP CONSTRAINT [FK_JoinRolesAndPermissions_Roles]
GO
/****** Object:  Table [insideWordDb].[JoinRolesAndPermissions]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] DROP CONSTRAINT [FK_JoinRolesAndPermissions_Permissions]
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] DROP CONSTRAINT [FK_JoinRolesAndPermissions_Roles]
GO
DROP TABLE [insideWordDb].[JoinRolesAndPermissions]
GO
/****** Object:  Table [insideWordDb].[Permissions]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[Permissions] DROP CONSTRAINT [FK_Permissions_Groups]
GO
DROP TABLE [insideWordDb].[Permissions]
GO
/****** Object:  Table [insideWordDb].[JoinMembershipsAndRoles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembershipsAndRoles] DROP CONSTRAINT [FK_JoinMembershipsAndRoles_Memberships]
GO
ALTER TABLE [insideWordDb].[JoinMembershipsAndRoles] DROP CONSTRAINT [FK_JoinMembershipsAndRoles_Roles]
GO
DROP TABLE [insideWordDb].[JoinMembershipsAndRoles]
GO
/****** Object:  Table [insideWordDb].[Roles]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[Roles] DROP CONSTRAINT [FK_Roles_Groups]
GO
DROP TABLE [insideWordDb].[Roles]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndCategories]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] DROP CONSTRAINT [FK_JoinCategoriesAndArticles_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] DROP CONSTRAINT [FK_JoinCategoriesAndArticles_Categories]
GO
DROP TABLE [insideWordDb].[JoinArticlesAndCategories]
GO
/****** Object:  Table [insideWordDb].[Memberships]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Memberships] DROP CONSTRAINT [FK_Memberships_Groups]
GO
ALTER TABLE [insideWordDb].[Memberships] DROP CONSTRAINT [FK_Memberships_Members]
GO
DROP TABLE [insideWordDb].[Memberships]
GO
/****** Object:  Table [insideWordDb].[Groups]    Script Date: 06/04/2011 10:37:01 ******/
DROP TABLE [insideWordDb].[Groups]
GO
/****** Object:  Table [insideWordDb].[InsideWordSettings]    Script Date: 06/04/2011 10:37:01 ******/
DROP TABLE [insideWordDb].[InsideWordSettings]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndAlternateCategories]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] DROP CONSTRAINT [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] DROP CONSTRAINT [FK_JoinArticlesAndAlternateCategories_Articles]
GO
DROP TABLE [insideWordDb].[JoinArticlesAndAlternateCategories]
GO
/****** Object:  Table [insideWordDb].[AlternateCategoryIds]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[AlternateCategoryIds] DROP CONSTRAINT [FK_AlternateCategoryIds_AlternateCategoryIds]
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds] DROP CONSTRAINT [FK_AlternateCategoryIds_Members]
GO
DROP TABLE [insideWordDb].[AlternateCategoryIds]
GO
/****** Object:  Table [insideWordDb].[Categories]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Categories] DROP CONSTRAINT [FK_Categories_Categories]
GO
DROP TABLE [insideWordDb].[Categories]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndMembers]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] DROP CONSTRAINT [FK_JoinArticlesAndMembers_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] DROP CONSTRAINT [FK_JoinArticlesAndMembers_Members]
GO
DROP TABLE [insideWordDb].[JoinArticlesAndMembers]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndPhotos]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndArticles_Articles]
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndArticles_Photos]
GO
DROP TABLE [insideWordDb].[JoinArticlesAndPhotos]
GO
/****** Object:  Table [insideWordDb].[JoinMembersAndMembers]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndMembers] DROP CONSTRAINT [FK_JoinMembersAndMembers_From_Members]
GO
ALTER TABLE [insideWordDb].[JoinMembersAndMembers] DROP CONSTRAINT [FK_JoinMembersAndMembers_To_Members]
GO
DROP TABLE [insideWordDb].[JoinMembersAndMembers]
GO
/****** Object:  Table [insideWordDb].[JoinMembersAndPhotos]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndMembers_Members]
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] DROP CONSTRAINT [FK_JoinPhotosAndUsers_Photos]
GO
DROP TABLE [insideWordDb].[JoinMembersAndPhotos]
GO
/****** Object:  Table [insideWordDb].[Comments]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Comments] DROP CONSTRAINT [FK_Comments_Members]
GO
ALTER TABLE [insideWordDb].[Comments] DROP CONSTRAINT [FK_Conversations_Comments]
GO
DROP TABLE [insideWordDb].[Comments]
GO
/****** Object:  Table [insideWordDb].[ConversationScores]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ConversationScores] DROP CONSTRAINT [FK_ConversationScores_Conversations]
GO
DROP TABLE [insideWordDb].[ConversationScores]
GO
/****** Object:  Table [insideWordDb].[ConversationVotes]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ConversationVotes] DROP CONSTRAINT [FK_ConversationVotes_Conversations]
GO
ALTER TABLE [insideWordDb].[ConversationVotes] DROP CONSTRAINT [FK_ConversationVotes_Members]
GO
DROP TABLE [insideWordDb].[ConversationVotes]
GO
/****** Object:  Table [insideWordDb].[Conversations]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Articles]
GO
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Author]
GO
ALTER TABLE [insideWordDb].[Conversations] DROP CONSTRAINT [FK_Conversations_Photos]
GO
DROP TABLE [insideWordDb].[Conversations]
GO
/****** Object:  Table [insideWordDb].[AlternateArticleIds]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[AlternateArticleIds] DROP CONSTRAINT [FK_AlternateArticleIds_Articles]
GO
ALTER TABLE [insideWordDb].[AlternateArticleIds] DROP CONSTRAINT [FK_AlternateArticleIds_Members]
GO
DROP TABLE [insideWordDb].[AlternateArticleIds]
GO
/****** Object:  Table [insideWordDb].[AlternateMemberIds]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[AlternateMemberIds] DROP CONSTRAINT [FK_AlternateMemberIds_Members]
GO
DROP TABLE [insideWordDb].[AlternateMemberIds]
GO
/****** Object:  Table [insideWordDb].[ArticleScores]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleScores] DROP CONSTRAINT [FK_ArticleScores_Articles]
GO
DROP TABLE [insideWordDb].[ArticleScores]
GO
/****** Object:  Table [insideWordDb].[ArticleTexts]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleTexts] DROP CONSTRAINT [FK_ArticleTexts_Articles]
GO
DROP TABLE [insideWordDb].[ArticleTexts]
GO
/****** Object:  Table [insideWordDb].[ArticleVotes]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleVotes] DROP CONSTRAINT [FK_ArticleVotes_Articles]
GO
ALTER TABLE [insideWordDb].[ArticleVotes] DROP CONSTRAINT [FK_ArticleVotes_Members]
GO
DROP TABLE [insideWordDb].[ArticleVotes]
GO
/****** Object:  Table [insideWordDb].[Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Articles] DROP CONSTRAINT [FK_Articles_Members]
GO
DROP TABLE [insideWordDb].[Articles]
GO
/****** Object:  Table [insideWordDb].[PhotoScores]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[PhotoScores] DROP CONSTRAINT [FK_PhotoScores_Photos]
GO
DROP TABLE [insideWordDb].[PhotoScores]
GO
/****** Object:  Table [insideWordDb].[PhotoVotes]    Script Date: 06/04/2011 10:37:00 ******/
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
/****** Object:  Table [insideWordDb].[Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [FK_Members_Photos]
GO
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [DF_Members_SystemEditDate]
GO
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [DF_Members_SystemCreateDate]
GO
ALTER TABLE [insideWordDb].[Members] DROP CONSTRAINT [DF_Members_IsArticleAdmin]
GO
DROP TABLE [insideWordDb].[Members]
GO
/****** Object:  Table [insideWordDb].[Photos]    Script Date: 06/04/2011 10:37:00 ******/
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
/****** Object:  Schema [insideWordDb]    Script Date: 06/04/2011 10:36:56 ******/
DROP SCHEMA [insideWordDb]
GO
/****** Object:  User [WIN-J62N4IAPRD4\Administrator]    Script Date: 06/04/2011 10:36:56 ******/
DROP USER [WIN-J62N4IAPRD4\Administrator]
GO
/****** Object:  User [mssqluser]    Script Date: 06/04/2011 10:36:56 ******/
DROP USER [mssqluser]
GO
/****** Object:  User [insideWordDb]    Script Date: 06/04/2011 10:36:56 ******/
DROP USER [insideWordDb]
GO
USE [master]
GO
/****** Object:  Login [WIN-J62N4IAPRD4\Administrator]    Script Date: 06/04/2011 10:36:56 ******/
DROP LOGIN [WIN-J62N4IAPRD4\Administrator]
GO
/****** Object:  Login [NT SERVICE\MSSQL$SQLEXPRESS]    Script Date: 06/04/2011 10:36:56 ******/
DROP LOGIN [NT SERVICE\MSSQL$SQLEXPRESS]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/04/2011 10:36:56 ******/
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [mssqluser]    Script Date: 06/04/2011 10:36:56 ******/
DROP LOGIN [mssqluser]
GO
/****** Object:  Login [insideWordDb]    Script Date: 06/04/2011 10:36:56 ******/
DROP LOGIN [insideWordDb]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/04/2011 10:36:56 ******/
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 06/04/2011 10:36:56 ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 06/04/2011 10:36:56 ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [WIN-J62N4IAPRD4\Administrator]    Script Date: 06/04/2011 10:36:56 ******/
CREATE LOGIN [WIN-J62N4IAPRD4\Administrator] FROM WINDOWS WITH DEFAULT_DATABASE=[insideWordDb], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQL$SQLEXPRESS]    Script Date: 06/04/2011 10:36:56 ******/
CREATE LOGIN [NT SERVICE\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 06/04/2011 10:36:56 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [mssqluser]    Script Date: 06/04/2011 10:36:56 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [mssqluser] WITH PASSWORD=N'4ð´ÝÅÜãyÛo¼9£qg°TçâD¤PiFÎF0ç', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
EXEC sys.sp_addsrvrolemember @loginame = N'mssqluser', @rolename = N'sysadmin'
GO
ALTER LOGIN [mssqluser] DISABLE
GO
/****** Object:  Login [insideWordDb]    Script Date: 06/04/2011 10:36:56 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [insideWordDb] WITH PASSWORD=N' {.0BÒeÒ9ä/»lèÙÜ¶KL¯', DEFAULT_DATABASE=[insideWordDb], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [insideWordDb] DISABLE
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 06/04/2011 10:36:56 ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 06/04/2011 10:36:56 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'Yäì3HÈ$-:m¿ßÐÃô;Gh:(/âª', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 06/04/2011 10:36:56 ******/
/* For security reasons the login is created disabled and with a random password. */
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'î#1m>nrÿÎôßæOi2¤:G;Í ê¤°Óª', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
USE [insideWordDb]
GO
/****** Object:  User [WIN-J62N4IAPRD4\Administrator]    Script Date: 06/04/2011 10:36:56 ******/
CREATE USER [WIN-J62N4IAPRD4\Administrator] FOR LOGIN [WIN-J62N4IAPRD4\Administrator] WITH DEFAULT_SCHEMA=[insideWordDb]
GO
/****** Object:  User [mssqluser]    Script Date: 06/04/2011 10:36:56 ******/
CREATE USER [mssqluser] FOR LOGIN [mssqluser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [insideWordDb]    Script Date: 06/04/2011 10:36:56 ******/
CREATE USER [insideWordDb] FOR LOGIN [insideWordDb] WITH DEFAULT_SCHEMA=[insideWordDb]
GO
/****** Object:  Schema [insideWordDb]    Script Date: 06/04/2011 10:36:56 ******/
CREATE SCHEMA [insideWordDb] AUTHORIZATION [insideWordDb]
GO
/****** Object:  Table [insideWordDb].[Photos]    Script Date: 06/04/2011 10:37:00 ******/
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
/****** Object:  Table [insideWordDb].[Members]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Members](
	[MemberId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL CONSTRAINT [DF_Members_SystemEditDate]  DEFAULT ('0001-01-01 00:00:00.0000000'),
	[SystemCreateDate] [datetime2](7) NOT NULL CONSTRAINT [DF_Members_SystemCreateDate]  DEFAULT ('0001-01-01 00:00:00.0000000'),
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Password] [nvarchar](128) NULL,
	[PhotoId] [bigint] NULL,
	[Bio] [nvarchar](1024) NULL,
	[IsSuperAdmin] [bit] NOT NULL,
	[IsMasterAdmin] [bit] NOT NULL,
	[IsUserAdmin] [bit] NOT NULL,
	[IsCategoryAdmin] [bit] NOT NULL,
	[IsArticleAdmin] [bit] NOT NULL CONSTRAINT [DF_Members_IsArticleAdmin]  DEFAULT ((0)),
	[IsBanned] [bit] NOT NULL,
 CONSTRAINT [PK__Users__1788CC4C11D4A34F] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[PhotoVotes]    Script Date: 06/04/2011 10:37:00 ******/
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
/****** Object:  Table [insideWordDb].[PhotoScores]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[PhotoScores](
	[PhotoScoreId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[PhotoId] [bigint] NOT NULL,
	[Score] [float] NOT NULL,
 CONSTRAINT [PK_PhotoScores] PRIMARY KEY CLUSTERED 
(
	[PhotoScoreId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PhotoId] ON [insideWordDb].[PhotoScores] 
(
	[PhotoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[Articles]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Articles](
	[ArticleId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[MemberId] [bigint] NULL,
	[Blurb] [nvarchar](256) NULL,
	[IsHidden] [bit] NOT NULL,
	[ReadCount] [int] NOT NULL,
	[IgnoreFlags] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[BlurbIsAutoGen] [bit] NOT NULL,
 CONSTRAINT [PK_articles] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[ArticleVotes]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[ArticleVotes](
	[ArticleVoteId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[ArticleId] [bigint] NOT NULL,
	[MemberId] [bigint] NULL,
	[VoteWeight] [int] NOT NULL,
	[IsShadowVote] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[Text] [nvarchar](512) NOT NULL,
	[IsHidden] [bit] NOT NULL,
 CONSTRAINT [PK_ArticleVote] PRIMARY KEY CLUSTERED 
(
	[ArticleVoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_ArticleId] ON [insideWordDb].[ArticleVotes] 
(
	[ArticleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[ArticleTexts]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[ArticleTexts](
	[ArticleTextId] [bigint] IDENTITY(1,1) NOT NULL,
	[ArticleId] [bigint] NOT NULL,
	[TextType] [int] NOT NULL,
	[Version] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ArticleText] PRIMARY KEY CLUSTERED 
(
	[ArticleTextId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[ArticleScores]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[ArticleScores](
	[ArticleScoreId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[ArticleId] [bigint] NOT NULL,
	[ScoreType] [int] NOT NULL,
	[Score] [float] NOT NULL,
 CONSTRAINT [PK_ArticleScores] PRIMARY KEY CLUSTERED 
(
	[ArticleScoreId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ArticleId_ScoreType] ON [insideWordDb].[ArticleScores] 
(
	[ArticleId] ASC,
	[ScoreType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[AlternateMemberIds]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[AlternateMemberIds](
	[AlternateMemberIdId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[ExpiryDate] [datetime2](7) NULL,
	[MemberId] [bigint] NOT NULL,
	[AlternateType] [int] NOT NULL,
	[AlternateId] [nvarchar](256) NOT NULL,
	[Data] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](64) NULL,
	[UsePassword] [bit] NOT NULL,
	[IsValidated] [bit] NOT NULL,
	[IsNonce] [bit] NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[IsHashed] [bit] NOT NULL,
	[LoginCount] [bigint] NOT NULL,
 CONSTRAINT [PK_AlternateMemberIds] PRIMARY KEY CLUSTERED 
(
	[AlternateMemberIdId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AlternateMemberIds_AlternateId] ON [insideWordDb].[AlternateMemberIds] 
(
	[AlternateId] ASC,
	[IsValidated] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[AlternateArticleIds]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[AlternateArticleIds](
	[AlternateArticleIdId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[ArticleId] [bigint] NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[AlternateId] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AlternateArticleId] PRIMARY KEY CLUSTERED 
(
	[AlternateArticleIdId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AlternateArticleIds_MemberId_AlternateId] ON [insideWordDb].[AlternateArticleIds] 
(
	[MemberId] ASC,
	[AlternateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[Conversations]    Script Date: 06/04/2011 10:37:01 ******/
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
/****** Object:  Table [insideWordDb].[ConversationVotes]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[ConversationVotes](
	[ConversationVoteId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[ConversationId] [bigint] NOT NULL,
	[MemberId] [bigint] NULL,
	[VoteWeight] [int] NOT NULL,
	[IsShadowVote] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[Text] [nvarchar](512) NOT NULL,
	[IsHidden] [bit] NOT NULL,
 CONSTRAINT [PK_CommentVote] PRIMARY KEY CLUSTERED 
(
	[ConversationVoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_ConversationId] ON [insideWordDb].[ConversationVotes] 
(
	[ConversationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[ConversationScores]    Script Date: 06/04/2011 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[ConversationScores](
	[ConversationScoreId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[ConversationId] [bigint] NOT NULL,
	[Score] [float] NOT NULL,
 CONSTRAINT [PK_ConversationScores] PRIMARY KEY CLUSTERED 
(
	[ConversationScoreId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ConversationId] ON [insideWordDb].[ConversationScores] 
(
	[ConversationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = ON, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[Comments]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Comments](
	[CommentId] [bigint] IDENTITY(1,1) NOT NULL,
	[ConversationId] [bigint] NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[MemberId] [bigint] NULL,
	[Text] [nvarchar](512) NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[IsFlagged] [int] NOT NULL,
	[IgnoreFlags] [bit] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[JoinMembersAndPhotos]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinMembersAndPhotos](
	[PhotoId] [bigint] NOT NULL,
	[MemberId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinMembersAndPhotos] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[JoinMembersAndMembers]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinMembersAndMembers](
	[FromMemberId] [bigint] NOT NULL,
	[ToMemberId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinMembersAndAuthors] PRIMARY KEY CLUSTERED 
(
	[FromMemberId] ASC,
	[ToMemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndPhotos]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinArticlesAndPhotos](
	[PhotoId] [bigint] NOT NULL,
	[ArticleId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinArticlesAndPhotos] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC,
	[ArticleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndMembers]    Script Date: 06/04/2011 10:37:01 ******/
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
/****** Object:  Table [insideWordDb].[Categories]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [insideWordDb].[Categories](
	[CategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[ParentCategoryId] [bigint] NULL,
	[Title] [nvarchar](256) NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[HierarchyLevel] [int] NOT NULL,
	[FullPath] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Category__19093A0B0E04126B] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Categories_FullPath] ON [insideWordDb].[Categories] 
(
	[FullPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[AlternateCategoryIds]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[AlternateCategoryIds](
	[AlternateCategoryIdId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[CategoryId] [bigint] NULL,
	[MemberId] [bigint] NOT NULL,
	[AlternateId] [bigint] NOT NULL,
	[DisplayName] [nvarchar](256) NULL,
	[OverrideFlag] [bit] NOT NULL,
 CONSTRAINT [PK_AlternateCategoryIds] PRIMARY KEY CLUSTERED 
(
	[AlternateCategoryIdId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AlternateCategoryIds] ON [insideWordDb].[AlternateCategoryIds] 
(
	[MemberId] ASC,
	[AlternateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[JoinArticlesAndAlternateCategories]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinArticlesAndAlternateCategories](
	[ArticleId] [bigint] NOT NULL,
	[AlternateCategoryIdId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinArticlesAndAlternateCategories] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC,
	[AlternateCategoryIdId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[InsideWordSettings]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[InsideWordSettings](
	[InsideWordSettingsId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[SettingKey] [nvarchar](64) NOT NULL,
	[SettingValue] [nvarchar](512) NOT NULL,
 CONSTRAINT [PK_InsideWordSettings_Primary_Key] PRIMARY KEY CLUSTERED 
(
	[InsideWordSettingsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_InsideWordSettings_Key] ON [insideWordDb].[InsideWordSettings] 
(
	[SettingKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[Groups]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Groups](
	[GroupId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[EditDate] [datetime2](7) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[IsBanned] [bit] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[Memberships]    Script Date: 06/04/2011 10:37:01 ******/
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
/****** Object:  Table [insideWordDb].[JoinArticlesAndCategories]    Script Date: 06/04/2011 10:37:01 ******/
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
/****** Object:  Trigger [trg_CategoriesUpdate]    Script Date: 06/04/2011 10:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [insideWordDb].[trg_CategoriesUpdate] ON [insideWordDb].[Categories] FOR UPDATE
AS
BEGIN
  IF @@ROWCOUNT = 0
        RETURN

    if UPDATE(ParentCategoryId)
    BEGIN
        UPDATE
            C
        SET
            HierarchyLevel    =
                C.HierarchyLevel - I.HierarchyLevel +
                    CASE
                        WHEN I.ParentCategoryId IS NULL THEN 0
                        ELSE Parent.HierarchyLevel + 1
                    END,
            FullPath =
                ISNULL(Parent.FullPath, '.') +
                CAST(I.CategoryId as varchar(10)) + '.' +
                RIGHT(C.FullPath, len(C.FullPath) - len(I.FullPath))
            FROM
                Categories AS C
            INNER JOIN
                inserted AS I ON C.FullPath LIKE I.FullPath + '%'
            LEFT OUTER JOIN
                Categories AS Parent ON I.ParentCategoryId = Parent.CategoryId
    END

END
GO
/****** Object:  Trigger [trg_CategoriesInsert]    Script Date: 06/04/2011 10:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [insideWordDb].[trg_CategoriesInsert] ON [insideWordDb].[Categories] FOR INSERT
AS
BEGIN
    DECLARE @numrows int
    SET @numrows = @@ROWCOUNT

    if @numrows > 1
    BEGIN
        RAISERROR('Only single row insertion is supported', 16, 1)
        ROLLBACK TRAN
    END
    ELSE
    BEGIN
        UPDATE
            C
        SET
            HierarchyLevel    =
            CASE
                WHEN C.ParentCategoryId IS NULL THEN 0
                ELSE Parent.HierarchyLevel + 1
            END,
            FullPath =
            CASE
                WHEN C.ParentCategoryId IS NULL THEN '.'
                ELSE Parent.FullPath
            END + CAST(C.CategoryId AS varchar(10)) + '.'
            FROM
                Categories AS C
            INNER JOIN
                inserted AS I ON I.CategoryId = C.CategoryId
            LEFT OUTER JOIN
                Categories AS Parent ON Parent.CategoryId = C.ParentCategoryId
    END
END
GO
/****** Object:  Table [insideWordDb].[Roles]    Script Date: 06/04/2011 10:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Roles](
	[RoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[GroupId] [bigint] NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[JoinMembershipsAndRoles]    Script Date: 06/04/2011 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[JoinMembershipsAndRoles](
	[MembershipId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_JoinMembershipsAndRoles] PRIMARY KEY CLUSTERED 
(
	[MembershipId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[Permissions]    Script Date: 06/04/2011 10:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [insideWordDb].[Permissions](
	[PermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[SystemCreateDate] [datetime2](7) NOT NULL,
	[SystemEditDate] [datetime2](7) NOT NULL,
	[GroupId] [bigint] NULL,
	[ObjectTypeId] [bigint] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[CanCreate] [bit] NOT NULL,
	[CanEdit] [bit] NOT NULL,
	[CanRead] [bit] NOT NULL,
	[CanDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Rights] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [insideWordDb].[JoinRolesAndPermissions]    Script Date: 06/04/2011 10:37:02 ******/
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
/****** Object:  ForeignKey [FK_PhotoVotes_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[PhotoVotes]  WITH CHECK ADD  CONSTRAINT [FK_PhotoVotes_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[PhotoVotes] CHECK CONSTRAINT [FK_PhotoVotes_Members]
GO
/****** Object:  ForeignKey [FK_PhotoVotes_Photos]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[PhotoVotes]  WITH CHECK ADD  CONSTRAINT [FK_PhotoVotes_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[PhotoVotes] CHECK CONSTRAINT [FK_PhotoVotes_Photos]
GO
/****** Object:  ForeignKey [FK_PhotoScores_Photos]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[PhotoScores]  WITH CHECK ADD  CONSTRAINT [FK_PhotoScores_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[PhotoScores] CHECK CONSTRAINT [FK_PhotoScores_Photos]
GO
/****** Object:  ForeignKey [FK_Members_Photos]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Members] CHECK CONSTRAINT [FK_Members_Photos]
GO
/****** Object:  ForeignKey [FK_Photos_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Photos] CHECK CONSTRAINT [FK_Photos_Members]
GO
/****** Object:  ForeignKey [FK_Photos_Photos]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Photos] FOREIGN KEY([OriginalId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
GO
ALTER TABLE [insideWordDb].[Photos] CHECK CONSTRAINT [FK_Photos_Photos]
GO
/****** Object:  ForeignKey [FK_ArticleVotes_Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleVotes]  WITH CHECK ADD  CONSTRAINT [FK_ArticleVotes_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[ArticleVotes] CHECK CONSTRAINT [FK_ArticleVotes_Articles]
GO
/****** Object:  ForeignKey [FK_ArticleVotes_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleVotes]  WITH CHECK ADD  CONSTRAINT [FK_ArticleVotes_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[ArticleVotes] CHECK CONSTRAINT [FK_ArticleVotes_Members]
GO
/****** Object:  ForeignKey [FK_ArticleTexts_Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleTexts]  WITH CHECK ADD  CONSTRAINT [FK_ArticleTexts_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[ArticleTexts] CHECK CONSTRAINT [FK_ArticleTexts_Articles]
GO
/****** Object:  ForeignKey [FK_ArticleScores_Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ArticleScores]  WITH CHECK ADD  CONSTRAINT [FK_ArticleScores_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[ArticleScores] CHECK CONSTRAINT [FK_ArticleScores_Articles]
GO
/****** Object:  ForeignKey [FK_Articles_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Articles] CHECK CONSTRAINT [FK_Articles_Members]
GO
/****** Object:  ForeignKey [FK_AlternateMemberIds_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[AlternateMemberIds]  WITH CHECK ADD  CONSTRAINT [FK_AlternateMemberIds_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[AlternateMemberIds] CHECK CONSTRAINT [FK_AlternateMemberIds_Members]
GO
/****** Object:  ForeignKey [FK_AlternateArticleIds_Articles]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[AlternateArticleIds]  WITH CHECK ADD  CONSTRAINT [FK_AlternateArticleIds_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[AlternateArticleIds] CHECK CONSTRAINT [FK_AlternateArticleIds_Articles]
GO
/****** Object:  ForeignKey [FK_AlternateArticleIds_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[AlternateArticleIds]  WITH CHECK ADD  CONSTRAINT [FK_AlternateArticleIds_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[AlternateArticleIds] CHECK CONSTRAINT [FK_AlternateArticleIds_Members]
GO
/****** Object:  ForeignKey [FK_ConversationVotes_Conversations]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ConversationVotes]  WITH CHECK ADD  CONSTRAINT [FK_ConversationVotes_Conversations] FOREIGN KEY([ConversationId])
REFERENCES [insideWordDb].[Conversations] ([ConversationId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[ConversationVotes] CHECK CONSTRAINT [FK_ConversationVotes_Conversations]
GO
/****** Object:  ForeignKey [FK_ConversationVotes_Members]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ConversationVotes]  WITH CHECK ADD  CONSTRAINT [FK_ConversationVotes_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[ConversationVotes] CHECK CONSTRAINT [FK_ConversationVotes_Members]
GO
/****** Object:  ForeignKey [FK_ConversationScores_Conversations]    Script Date: 06/04/2011 10:37:00 ******/
ALTER TABLE [insideWordDb].[ConversationScores]  WITH CHECK ADD  CONSTRAINT [FK_ConversationScores_Conversations] FOREIGN KEY([ConversationId])
REFERENCES [insideWordDb].[Conversations] ([ConversationId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[ConversationScores] CHECK CONSTRAINT [FK_ConversationScores_Conversations]
GO
/****** Object:  ForeignKey [FK_Conversations_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Conversations]  WITH CHECK ADD  CONSTRAINT [FK_Conversations_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Conversations] CHECK CONSTRAINT [FK_Conversations_Articles]
GO
/****** Object:  ForeignKey [FK_Conversations_Author]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Conversations]  WITH CHECK ADD  CONSTRAINT [FK_Conversations_Author] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Conversations] CHECK CONSTRAINT [FK_Conversations_Author]
GO
/****** Object:  ForeignKey [FK_Conversations_Photos]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Conversations]  WITH CHECK ADD  CONSTRAINT [FK_Conversations_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Conversations] CHECK CONSTRAINT [FK_Conversations_Photos]
GO
/****** Object:  ForeignKey [FK_Comments_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[Comments] CHECK CONSTRAINT [FK_Comments_Members]
GO
/****** Object:  ForeignKey [FK_Conversations_Comments]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Conversations_Comments] FOREIGN KEY([ConversationId])
REFERENCES [insideWordDb].[Conversations] ([ConversationId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Comments] CHECK CONSTRAINT [FK_Conversations_Comments]
GO
/****** Object:  ForeignKey [FK_JoinPhotosAndMembers_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos]  WITH CHECK ADD  CONSTRAINT [FK_JoinPhotosAndMembers_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] CHECK CONSTRAINT [FK_JoinPhotosAndMembers_Members]
GO
/****** Object:  ForeignKey [FK_JoinPhotosAndUsers_Photos]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos]  WITH CHECK ADD  CONSTRAINT [FK_JoinPhotosAndUsers_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinMembersAndPhotos] CHECK CONSTRAINT [FK_JoinPhotosAndUsers_Photos]
GO
/****** Object:  ForeignKey [FK_JoinMembersAndMembers_From_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndMembers]  WITH CHECK ADD  CONSTRAINT [FK_JoinMembersAndMembers_From_Members] FOREIGN KEY([FromMemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinMembersAndMembers] CHECK CONSTRAINT [FK_JoinMembersAndMembers_From_Members]
GO
/****** Object:  ForeignKey [FK_JoinMembersAndMembers_To_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembersAndMembers]  WITH CHECK ADD  CONSTRAINT [FK_JoinMembersAndMembers_To_Members] FOREIGN KEY([ToMemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
GO
ALTER TABLE [insideWordDb].[JoinMembersAndMembers] CHECK CONSTRAINT [FK_JoinMembersAndMembers_To_Members]
GO
/****** Object:  ForeignKey [FK_JoinPhotosAndArticles_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndPhotos]  WITH CHECK ADD  CONSTRAINT [FK_JoinPhotosAndArticles_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndPhotos] CHECK CONSTRAINT [FK_JoinPhotosAndArticles_Articles]
GO
/****** Object:  ForeignKey [FK_JoinPhotosAndArticles_Photos]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndPhotos]  WITH CHECK ADD  CONSTRAINT [FK_JoinPhotosAndArticles_Photos] FOREIGN KEY([PhotoId])
REFERENCES [insideWordDb].[Photos] ([PhotoId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndPhotos] CHECK CONSTRAINT [FK_JoinPhotosAndArticles_Photos]
GO
/****** Object:  ForeignKey [FK_JoinArticlesAndMembers_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers]  WITH CHECK ADD  CONSTRAINT [FK_JoinArticlesAndMembers_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] CHECK CONSTRAINT [FK_JoinArticlesAndMembers_Articles]
GO
/****** Object:  ForeignKey [FK_JoinArticlesAndMembers_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers]  WITH CHECK ADD  CONSTRAINT [FK_JoinArticlesAndMembers_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndMembers] CHECK CONSTRAINT [FK_JoinArticlesAndMembers_Members]
GO
/****** Object:  ForeignKey [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories]  WITH CHECK ADD  CONSTRAINT [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds] FOREIGN KEY([AlternateCategoryIdId])
REFERENCES [insideWordDb].[AlternateCategoryIds] ([AlternateCategoryIdId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] CHECK CONSTRAINT [FK_JoinArticlesAndAlternateCategories_AlternateCategoryIds]
GO
/****** Object:  ForeignKey [FK_JoinArticlesAndAlternateCategories_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories]  WITH CHECK ADD  CONSTRAINT [FK_JoinArticlesAndAlternateCategories_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndAlternateCategories] CHECK CONSTRAINT [FK_JoinArticlesAndAlternateCategories_Articles]
GO
/****** Object:  ForeignKey [FK_Memberships_Groups]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Memberships]  WITH CHECK ADD  CONSTRAINT [FK_Memberships_Groups] FOREIGN KEY([GroupId])
REFERENCES [insideWordDb].[Groups] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Memberships] CHECK CONSTRAINT [FK_Memberships_Groups]
GO
/****** Object:  ForeignKey [FK_Memberships_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Memberships]  WITH CHECK ADD  CONSTRAINT [FK_Memberships_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Memberships] CHECK CONSTRAINT [FK_Memberships_Members]
GO
/****** Object:  ForeignKey [FK_JoinCategoriesAndArticles_Articles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories]  WITH CHECK ADD  CONSTRAINT [FK_JoinCategoriesAndArticles_Articles] FOREIGN KEY([ArticleId])
REFERENCES [insideWordDb].[Articles] ([ArticleId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] CHECK CONSTRAINT [FK_JoinCategoriesAndArticles_Articles]
GO
/****** Object:  ForeignKey [FK_JoinCategoriesAndArticles_Categories]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories]  WITH CHECK ADD  CONSTRAINT [FK_JoinCategoriesAndArticles_Categories] FOREIGN KEY([CategoryId])
REFERENCES [insideWordDb].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinArticlesAndCategories] CHECK CONSTRAINT [FK_JoinCategoriesAndArticles_Categories]
GO
/****** Object:  ForeignKey [FK_AlternateCategoryIds_AlternateCategoryIds]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[AlternateCategoryIds]  WITH CHECK ADD  CONSTRAINT [FK_AlternateCategoryIds_AlternateCategoryIds] FOREIGN KEY([CategoryId])
REFERENCES [insideWordDb].[Categories] ([CategoryId])
ON DELETE SET NULL
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds] CHECK CONSTRAINT [FK_AlternateCategoryIds_AlternateCategoryIds]
GO
/****** Object:  ForeignKey [FK_AlternateCategoryIds_Members]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[AlternateCategoryIds]  WITH CHECK ADD  CONSTRAINT [FK_AlternateCategoryIds_Members] FOREIGN KEY([MemberId])
REFERENCES [insideWordDb].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[AlternateCategoryIds] CHECK CONSTRAINT [FK_AlternateCategoryIds_Members]
GO
/****** Object:  ForeignKey [FK_Categories_Categories]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([ParentCategoryId])
REFERENCES [insideWordDb].[Categories] ([CategoryId])
GO
ALTER TABLE [insideWordDb].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
/****** Object:  ForeignKey [FK_JoinMembershipsAndRoles_Memberships]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembershipsAndRoles]  WITH CHECK ADD  CONSTRAINT [FK_JoinMembershipsAndRoles_Memberships] FOREIGN KEY([MembershipId])
REFERENCES [insideWordDb].[Memberships] ([MembershipId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinMembershipsAndRoles] CHECK CONSTRAINT [FK_JoinMembershipsAndRoles_Memberships]
GO
/****** Object:  ForeignKey [FK_JoinMembershipsAndRoles_Roles]    Script Date: 06/04/2011 10:37:01 ******/
ALTER TABLE [insideWordDb].[JoinMembershipsAndRoles]  WITH CHECK ADD  CONSTRAINT [FK_JoinMembershipsAndRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [insideWordDb].[Roles] ([RoleId])
GO
ALTER TABLE [insideWordDb].[JoinMembershipsAndRoles] CHECK CONSTRAINT [FK_JoinMembershipsAndRoles_Roles]
GO
/****** Object:  ForeignKey [FK_Roles_Groups]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Groups] FOREIGN KEY([GroupId])
REFERENCES [insideWordDb].[Groups] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Roles] CHECK CONSTRAINT [FK_Roles_Groups]
GO
/****** Object:  ForeignKey [FK_Permissions_Groups]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Groups] FOREIGN KEY([GroupId])
REFERENCES [insideWordDb].[Groups] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[Permissions] CHECK CONSTRAINT [FK_Permissions_Groups]
GO
/****** Object:  ForeignKey [FK_JoinRolesAndPermissions_Permissions]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions]  WITH CHECK ADD  CONSTRAINT [FK_JoinRolesAndPermissions_Permissions] FOREIGN KEY([PermissionId])
REFERENCES [insideWordDb].[Permissions] ([PermissionId])
ON DELETE CASCADE
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] CHECK CONSTRAINT [FK_JoinRolesAndPermissions_Permissions]
GO
/****** Object:  ForeignKey [FK_JoinRolesAndPermissions_Roles]    Script Date: 06/04/2011 10:37:02 ******/
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions]  WITH CHECK ADD  CONSTRAINT [FK_JoinRolesAndPermissions_Roles] FOREIGN KEY([RoleId])
REFERENCES [insideWordDb].[Roles] ([RoleId])
GO
ALTER TABLE [insideWordDb].[JoinRolesAndPermissions] CHECK CONSTRAINT [FK_JoinRolesAndPermissions_Roles]
GO
