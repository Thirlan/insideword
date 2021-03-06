USE [master]
GO
/****** Object:  Database [insideWordDb]    Script Date: 06/04/2011 10:41:40 ******/
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
