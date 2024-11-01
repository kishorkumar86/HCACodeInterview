USE [master]
GO
/****** Object:  Database [HCAInterviewDB]    Script Date: 10/29/2024 5:26:00 PM ******/
CREATE DATABASE [HCAInterviewDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HCAInterviewDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\HCAInterviewDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HCAInterviewDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\HCAInterviewDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HCAInterviewDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HCAInterviewDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HCAInterviewDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HCAInterviewDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HCAInterviewDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HCAInterviewDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HCAInterviewDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HCAInterviewDB] SET  MULTI_USER 
GO
ALTER DATABASE [HCAInterviewDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HCAInterviewDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HCAInterviewDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HCAInterviewDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HCAInterviewDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HCAInterviewDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HCAInterviewDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [HCAInterviewDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HCAInterviewDB]
GO
/****** Object:  Table [dbo].[FeedBackTable]    Script Date: 10/29/2024 5:26:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBackTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewerName] [nvarchar](100) NULL,
	[FeedbackText] [nvarchar](1000) NULL,
	[DateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questionAnswersTable]    Script Date: 10/29/2024 5:26:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questionAnswersTable](
	[ID] [int] NOT NULL,
	[Question] [nvarchar](500) NULL,
	[Answer] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FeedBackTable] ON 

INSERT [dbo].[FeedBackTable] ([Id], [ReviewerName], [FeedbackText], [DateTime]) VALUES (1, N'Reviewer1', N'Selected, 5 sections Covered', CAST(N'2024-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[FeedBackTable] ([Id], [ReviewerName], [FeedbackText], [DateTime]) VALUES (2, N'Reviewer2', N'Selected,  10  sections Covered', CAST(N'2024-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[FeedBackTable] OFF
GO
INSERT [dbo].[questionAnswersTable] ([ID], [Question], [Answer]) VALUES (1, N'Is this application built using the MVC (Model-View-Controller) design pattern?', N'Actually, this application is indeed built using the MVC design pattern.')
INSERT [dbo].[questionAnswersTable] ([ID], [Question], [Answer]) VALUES (2, N'Is the database connection configured and working properly?', N'The database connection is properly configured and working.')
INSERT [dbo].[questionAnswersTable] ([ID], [Question], [Answer]) VALUES (3, N'Is the application developed in .Net core', N'Yes, its developed in .net core and you can see the target framework as 8.0 in the solution properties.')
INSERT [dbo].[questionAnswersTable] ([ID], [Question], [Answer]) VALUES (4, N'Does this application use Entity Framework (EF) for database operations?', N'Yes, Entity Framework is used for database operations in this application.')
INSERT [dbo].[questionAnswersTable] ([ID], [Question], [Answer]) VALUES (5, N'Are CRUD (Create, Read, Update, Delete) operations implemented in this application?', N'CRUD operations (Create, Read, Update, Delete) are implemented in this application feedback form.')
INSERT [dbo].[questionAnswersTable] ([ID], [Question], [Answer]) VALUES (6, N'Is Dependency Injection (DI) used?', N'DI is integral and is used for injecting DbContext services for Entity Framework (EF) in program.cs file.')
INSERT [dbo].[questionAnswersTable] ([ID], [Question], [Answer]) VALUES (8, N'Is JQuery used?', N'To Open the Modal popup for providing inputs.')
INSERT [dbo].[questionAnswersTable] ([ID], [Question], [Answer]) VALUES (7, N'Is CSS in UI used?', N'Yes, CSS is used to style the table with striped rows and to enhance the responsiveness of the website.')
GO
USE [master]
GO
ALTER DATABASE [HCAInterviewDB] SET  READ_WRITE 
GO
