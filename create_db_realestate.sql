USE [master]
GO

/****** Object:  Database [RealEstate]    Script Date: 26-8-2015 19:34:41 ******/
CREATE DATABASE [RealEstate] ON  PRIMARY 
( NAME = N'RealEstate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\RealEstate.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RealEstate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\RealEstate_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [RealEstate] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RealEstate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [RealEstate] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [RealEstate] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [RealEstate] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [RealEstate] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [RealEstate] SET ARITHABORT OFF 
GO

ALTER DATABASE [RealEstate] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [RealEstate] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [RealEstate] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [RealEstate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [RealEstate] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [RealEstate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [RealEstate] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [RealEstate] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [RealEstate] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [RealEstate] SET  DISABLE_BROKER 
GO

ALTER DATABASE [RealEstate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [RealEstate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [RealEstate] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [RealEstate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [RealEstate] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [RealEstate] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [RealEstate] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [RealEstate] SET RECOVERY FULL 
GO

ALTER DATABASE [RealEstate] SET  MULTI_USER 
GO

ALTER DATABASE [RealEstate] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [RealEstate] SET DB_CHAINING OFF 
GO

ALTER DATABASE [RealEstate] SET  READ_WRITE 
GO

