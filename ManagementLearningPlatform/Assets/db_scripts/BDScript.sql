/****** SQL Server MS Ver.18.8 ******/
/****** Then, drag this file into SQL Server and excute ******/
/****** Data is arbitary generated ******/
CREATE DATABASE LMSSYSTEM
USE [LMSSYSTEM]
GO
/****** Object:  Table [dbo].[CourseTeacherRelation] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseTeacherRelation](
	[course_id] [varchar](20) NOT NULL,
	[teacher_id] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[course_id] [varchar](20) NOT NULL,
	[course_name] [varchar](150) NOT NULL,
	[course_description] [varchar](500) NULL,
	[course_is_published] [int] NOT NULL,
	[course_cover] [varchar](200) NOT NULL,
	[course_url] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platforms]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platforms](
	[platform_id] [varchar](20) NOT NULL,
	[platform_name] [varchar](50) NOT NULL,
	[platform_is_validation] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayRecord] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayRecord](
	[course_id] [varchar](20) NOT NULL,
	[platform_id] [varchar](20) NOT NULL,
	[playrecord_play_count] [decimal](18, 0) NOT NULL,
	[playrecord_is_growing] [int] NOT NULL,
	[playrecord_growing_rate] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/9/2021 9:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [varchar](20) NOT NULL,
	[user_name] [varchar](20) NOT NULL,
	[user_real_name] [varchar](20) NOT NULL,
	[user_password] [varchar](40) NULL,
	[user_is_validation] [int] NOT NULL,
	[user_is_can_login] [int] NOT NULL,
	[user_is_teacher] [int] NOT NULL,
	[user_avatar] [varchar](200) NULL,
	[user_gender] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Courses] ADD  DEFAULT ('') FOR [course_cover]
GO
ALTER TABLE [dbo].[Courses] ADD  DEFAULT ('') FOR [course_url]
GO
