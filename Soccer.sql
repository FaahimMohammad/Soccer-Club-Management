USE [master]
GO
/****** Object:  Database [Soccer]    Script Date: 23-Apr-21 4:39:25 PM ******/
CREATE DATABASE [Soccer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Soccer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Soccer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Soccer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Soccer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Soccer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Soccer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Soccer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Soccer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Soccer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Soccer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Soccer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Soccer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Soccer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Soccer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Soccer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Soccer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Soccer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Soccer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Soccer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Soccer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Soccer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Soccer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Soccer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Soccer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Soccer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Soccer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Soccer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Soccer] SET RECOVERY FULL 
GO
ALTER DATABASE [Soccer] SET  MULTI_USER 
GO
ALTER DATABASE [Soccer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Soccer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Soccer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Soccer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Soccer] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Soccer', N'ON'
GO
USE [Soccer]
GO
/****** Object:  Table [dbo].[CoachInstruction]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoachInstruction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[message] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_CoachInstruction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[nid] [varchar](50) NOT NULL,
	[salary] [varchar](50) NOT NULL,
	[joindate] [date] NOT NULL,
	[userID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerPerformance]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerPerformance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[Ball_Control] [varchar](50) NOT NULL,
	[Passing] [varchar](50) NOT NULL,
	[Dribbling] [varchar](50) NOT NULL,
	[Heading] [varchar](50) NOT NULL,
	[Finishing] [varchar](50) NOT NULL,
	[In_Attack] [varchar](50) NOT NULL,
	[In_Defense] [varchar](50) NOT NULL,
	[Endurance] [varchar](50) NOT NULL,
	[Speed] [varchar](50) NOT NULL,
	[Agility] [varchar](50) NOT NULL,
	[Strenth] [varchar](50) NOT NULL,
	[Drive] [varchar](50) NOT NULL,
	[Aggressiveness] [varchar](50) NOT NULL,
	[Leadership] [varchar](50) NOT NULL,
	[Remarks] [varchar](50) NULL,
 CONSTRAINT [PK_PlayerPerformance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportFeedback]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportFeedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[remark] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ReportFeedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportingTime]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportingTime](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[remark] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ReportingTime] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teamFormat]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teamFormat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[team] [varchar](50) NULL,
 CONSTRAINT [PK_teamFormat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[qsn] [varchar](50) NOT NULL,
	[ans] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkoutMonitor]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkoutMonitor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[workout_list] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[userID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WorkoutMonitor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSchedule]    Script Date: 23-Apr-21 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSchedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[task] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WorkSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CoachInstruction] ON 

INSERT [dbo].[CoachInstruction] ([id], [UserID], [message], [date]) VALUES (1, N'coach', N'do your job!', CAST(N'2005-03-20' AS Date))
SET IDENTITY_INSERT [dbo].[CoachInstruction] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([id], [name], [address], [phone], [gender], [nid], [salary], [joindate], [userID]) VALUES (4, N'Zidan', N'manchester ', N'+94321654', N'Male', N'56432564', N'90000', CAST(N'2012-05-09' AS Date), N'admin')
INSERT [dbo].[Employee] ([id], [name], [address], [phone], [gender], [nid], [salary], [joindate], [userID]) VALUES (5, N'Alba', N'Notinghum', N'+5642616', N'Male', N'65462456', N'10000000', CAST(N'2016-06-08' AS Date), N'player')
INSERT [dbo].[Employee] ([id], [name], [address], [phone], [gender], [nid], [salary], [joindate], [userID]) VALUES (6, N'Benzema', N'Barcelona', N'+5643216', N'Male', N'5641621', N'70000', CAST(N'2017-06-06' AS Date), N'coach')
INSERT [dbo].[Employee] ([id], [name], [address], [phone], [gender], [nid], [salary], [joindate], [userID]) VALUES (7, N'rodrigez', N'UK', N'65423165456', N'Male', N'6546234564', N'50000', CAST(N'2021-03-01' AS Date), N'staff')
INSERT [dbo].[Employee] ([id], [name], [address], [phone], [gender], [nid], [salary], [joindate], [userID]) VALUES (8, N'subah', N'USA', N'533432465', N'Male', N'5643254354', N'500000', CAST(N'2021-04-03' AS Date), N'player2')
INSERT [dbo].[Employee] ([id], [name], [address], [phone], [gender], [nid], [salary], [joindate], [userID]) VALUES (9, N'hamez', N'UAE', N'564654', N'Male', N'5454656465', N'400000', CAST(N'2020-04-01' AS Date), N'player3')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[PlayerPerformance] ON 

INSERT [dbo].[PlayerPerformance] ([id], [userID], [Ball_Control], [Passing], [Dribbling], [Heading], [Finishing], [In_Attack], [In_Defense], [Endurance], [Speed], [Agility], [Strenth], [Drive], [Aggressiveness], [Leadership], [Remarks]) VALUES (1, N'player', N'level 1', N'level 1', N'level 2', N'level 1', N'level 2', N'level 1', N'level 3', N'level 1', N'level 1', N'level 2', N'level 1', N'level 1', N'level 2', N'level 2', NULL)
INSERT [dbo].[PlayerPerformance] ([id], [userID], [Ball_Control], [Passing], [Dribbling], [Heading], [Finishing], [In_Attack], [In_Defense], [Endurance], [Speed], [Agility], [Strenth], [Drive], [Aggressiveness], [Leadership], [Remarks]) VALUES (2, N'player2', N'level 1', N'level 2', N'level 3', N'level 3', N'level 2', N'level 2', N'level 1', N'level 2', N'level 2', N'level 2', N'level 2', N'level 2', N'level 1', N'level 1', NULL)
INSERT [dbo].[PlayerPerformance] ([id], [userID], [Ball_Control], [Passing], [Dribbling], [Heading], [Finishing], [In_Attack], [In_Defense], [Endurance], [Speed], [Agility], [Strenth], [Drive], [Aggressiveness], [Leadership], [Remarks]) VALUES (3, N'player3', N'level 2', N'level 2', N'level 2', N'level 1', N'level 1', N'level 3', N'level 2', N'level 1', N'level 3', N'level 3', N'level 3', N'level 2', N'level 1', N'level 2', NULL)
SET IDENTITY_INSERT [dbo].[PlayerPerformance] OFF
GO
SET IDENTITY_INSERT [dbo].[ReportFeedback] ON 

INSERT [dbo].[ReportFeedback] ([id], [userID], [date], [remark]) VALUES (1, N'staff', CAST(N'2006-04-20' AS Date), N'satisfactory')
INSERT [dbo].[ReportFeedback] ([id], [userID], [date], [remark]) VALUES (2, N'staff', CAST(N'2021-04-23' AS Date), N'good')
SET IDENTITY_INSERT [dbo].[ReportFeedback] OFF
GO
SET IDENTITY_INSERT [dbo].[ReportingTime] ON 

INSERT [dbo].[ReportingTime] ([id], [userID], [date], [remark]) VALUES (1, N'player', CAST(N'2003-05-20' AS Date), N'late')
INSERT [dbo].[ReportingTime] ([id], [userID], [date], [remark]) VALUES (2, N'player2', CAST(N'2021-04-01' AS Date), N'on time')
SET IDENTITY_INSERT [dbo].[ReportingTime] OFF
GO
SET IDENTITY_INSERT [dbo].[teamFormat] ON 

INSERT [dbo].[teamFormat] ([id], [userID], [team]) VALUES (1, N'player', N'A')
INSERT [dbo].[teamFormat] ([id], [userID], [team]) VALUES (2, N'player2', N'B')
INSERT [dbo].[teamFormat] ([id], [userID], [team]) VALUES (3, N'player3', N'C')
SET IDENTITY_INSERT [dbo].[teamFormat] OFF
GO
SET IDENTITY_INSERT [dbo].[UserLogin] ON 

INSERT [dbo].[UserLogin] ([id], [userID], [password], [type], [qsn], [ans]) VALUES (1, N'admin', N'123', N'Admin', N'What is your favorite video game?', N'GTA')
INSERT [dbo].[UserLogin] ([id], [userID], [password], [type], [qsn], [ans]) VALUES (2, N'coach', N'123', N'Coach', N'Where did you born?', N'dhaka')
INSERT [dbo].[UserLogin] ([id], [userID], [password], [type], [qsn], [ans]) VALUES (3, N'player', N'123', N'Player', N'Who was your first school friend?', N'asef')
INSERT [dbo].[UserLogin] ([id], [userID], [password], [type], [qsn], [ans]) VALUES (7, N'staff', N'123', N'Staff', N'Where did you born?', N'badda')
INSERT [dbo].[UserLogin] ([id], [userID], [password], [type], [qsn], [ans]) VALUES (9, N'player2', N'123', N'Player', N'Where did you born?', N'banasree')
INSERT [dbo].[UserLogin] ([id], [userID], [password], [type], [qsn], [ans]) VALUES (10, N'player3', N'123', N'Player', N'Where did you born?', N'uttara')
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkoutMonitor] ON 

INSERT [dbo].[WorkoutMonitor] ([id], [workout_list], [date], [userID]) VALUES (1, N'cardio, short run, shoting', CAST(N'2021-03-20' AS Date), N'player')
INSERT [dbo].[WorkoutMonitor] ([id], [workout_list], [date], [userID]) VALUES (2, N'dribble', CAST(N'2020-05-06' AS Date), N'player2')
INSERT [dbo].[WorkoutMonitor] ([id], [workout_list], [date], [userID]) VALUES (3, N'check your mail', CAST(N'2021-04-22' AS Date), N'player3')
INSERT [dbo].[WorkoutMonitor] ([id], [workout_list], [date], [userID]) VALUES (4, N'take rest', CAST(N'2021-04-22' AS Date), N'player')
SET IDENTITY_INSERT [dbo].[WorkoutMonitor] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkSchedule] ON 

INSERT [dbo].[WorkSchedule] ([id], [userID], [date], [task]) VALUES (1, N'staff', CAST(N'2003-05-20' AS Date), N'deliver sports goods')
INSERT [dbo].[WorkSchedule] ([id], [userID], [date], [task]) VALUES (2, N'staff', CAST(N'2021-04-23' AS Date), N'do it')
SET IDENTITY_INSERT [dbo].[WorkSchedule] OFF
GO
USE [master]
GO
ALTER DATABASE [Soccer] SET  READ_WRITE 
GO
