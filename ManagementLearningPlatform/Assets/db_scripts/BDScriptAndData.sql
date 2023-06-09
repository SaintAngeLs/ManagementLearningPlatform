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

INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0001', N'TID1003')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0001', N'TID1005')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0002', N'TID1004')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0002', N'TID1005')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0003', N'TID1006')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0004', N'TID1007')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0005', N'TID1008')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0006', N'TID1003')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0007', N'TID1003')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0007', N'TID1005')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0008', N'TID1003')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0008', N'TID1005')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0009', N'TID1007')
INSERT [dbo].[CourseTeacherRelation] ([course_id], [teacher_id]) VALUES (N'CID0010', N'TID1008')
GO
INSERT [dbo].[Courses] ([course_id], [course_name], [course_description], [course_is_published], [course_cover], [course_url]) VALUES (N'C0001', N'C#/.Net Architect', N'.Net architecture mastery course, designed to train exceptional .Net architects! Delve deep into distributed systems, cross-platform development, microservices, and gain the mindset of a core architect. Implement real-world architectural projects and become a highly skilled architect!', 1, N'https://twitter.com/dotnet/photo', N'https://twitter.com/dotnet')
INSERT [dbo].[Courses] ([course_id], [course_name], [course_description], [course_is_published], [course_cover], [course_url]) VALUES (N'C0002', N'C#/.Net Advanced VIP', N'Advanced C#/.Net VIP program tailored for seasoned developers. Explore advanced C# concepts, target-oriented programming, and in-depth application framework customization and extension. Stay updated with cutting-edge technologies like cross-platform development and microservices, and propel your team to new heights!', 1, N'https://twitter.com/dotnet/photo', N'https://twitter.com/dotnet')
INSERT [dbo].[Courses] ([course_id], [course_name], [course_description], [course_is_published], [course_cover], [course_url]) VALUES (N'C0003', N'Java Advanced VIP', N'This VIP course focuses on nurturing JAVA architects who meet the demands of the front-line Internet industry. It covers various projects such as hotel systems, morning and evening training platforms, and Yitao e-commerce. These projects are inspired by real-world enterprise needs, providing you with valuable experience and skills to excel in project development and advancement.', 1, N'https://twitter.com/dotnet/photo', N'https://twitter.com/dotnet')
INSERT [dbo].[Courses] ([course_id], [course_name], [course_description], [course_is_published], [course_cover], [course_url]) VALUES (N'C0004', N'C#/.Net Full Stack', N'Embark on a comprehensive full-stack journey with C#, SQL, Ado.Net, O/RM, HTML, CSS, JavaScript, and popular front-end frameworks like Vue.js. Explore Web Forms, MVC, and ASP.Net Core, and complete multiple hands-on projects to enhance your practical skills!', 1, N'https://twitter.com/dotnet/photo', N'https://twitter.com/dotnet')
INSERT [dbo].[Courses] ([course_id], [course_name], [course_description], [course_is_published], [course_cover], [course_url]) VALUES (N'C0005', N'Winform Advanced', N'Zero-to-hero guide for SQL Server and Winform client development. This course provides hundreds of videos, including a live broadcast in March. Gain the skills needed to secure employment and deliver practical product projects upon graduation!', 1, N'https://twitter.com/dotnet/photo', N'https://twitter.com/dotnet')
INSERT [dbo].[Courses] ([course_id], [course_name], [course_description], [course_is_published], [course_cover], [course_url]) VALUES (N'C0006', N'AutoCAD/C# Project-Oriented Bootcamp', N'Comprehensive course covering essential components encountered in .Net development. Dive deep into framework interpretation, advanced syntax, cross-platform development, and special topics like high-concurrency big data. This course is continuously updated to keep you at the forefront of .Net development!', 1, N'https://twitter.com/dotnet/photo', N'https://twitter.com/dotnet')
INSERT [dbo].[Courses] ([course_id], [course_name], [course_description], [course_is_published], [course_cover], [course_url]) VALUES (N'C0008', N'C#/.Net Advanced', N'Specialized course for advanced developers, featuring in-depth coverage of development components such as Autofac, log4net, Nginx, read-write separation, GIT, Core-Linux, and more. Access a complete set of video courseware to support your learning environment!', 1, N'https://twitter.com/dotnet/photo', N'https://twitter.com/dotnet')
INSERT [dbo].[Courses] ([course_id], [course_name], [course_description], [course_is_published], [course_cover], [course_url]) VALUES (N'C0009', N'Front-end Advanced', N'Experience the latest web front-end zero-to-hero tutorial for 2020! Dive into HTML, CSS, and JavaScript system tutorials, considered the "best on earth" zero-to-hero resource for aspiring web developers!', 1, N'https://twitter.com/dotnet/photo', N'https://twitter.com/dotnet')
GO
INSERT [dbo].[platforms] ([platform_id], [platform_name], [platform_is_validation]) VALUES (N'P0001', N'Youtube', 1)
INSERT [dbo].[platforms] ([platform_id], [platform_name], [platform_is_validation]) VALUES (N'P0002', N'Website', 1)
INSERT [dbo].[platforms] ([platform_id], [platform_name], [platform_is_validation]) VALUES (N'P0003', N'Twitter', 1)
INSERT [dbo].[platforms] ([platform_id], [platform_name], [platform_is_validation]) VALUES (N'P0004', N'Bilibili', 1)
INSERT [dbo].[platforms] ([platform_id], [platform_name], [platform_is_validation]) VALUES (N'P0005', N'Blog', 1)
INSERT [dbo].[platforms] ([platform_id], [platform_name], [platform_is_validation]) VALUES (N'P0006', N'Others', 1)
GO
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0001', N'PF001', CAST(161 AS Decimal(18, 0)), 0, CAST(-75 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0001', N'PF002', CAST(283 AS Decimal(18, 0)), 1, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0001', N'PF003', CAST(568 AS Decimal(18, 0)), 1, CAST(22 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0001', N'PF004', CAST(41 AS Decimal(18, 0)), 1, CAST(77 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0001', N'PF005', CAST(678 AS Decimal(18, 0)), 1, CAST(91 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0002', N'PF001', CAST(207 AS Decimal(18, 0)), 0, CAST(-43 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0002', N'PF002', CAST(930 AS Decimal(18, 0)), 0, CAST(-84 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0002', N'PF003', CAST(218 AS Decimal(18, 0)), 1, CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0002', N'PF004', CAST(107 AS Decimal(18, 0)), 1, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0002', N'PF005', CAST(420 AS Decimal(18, 0)), 1, CAST(31 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0003', N'PF001', CAST(512 AS Decimal(18, 0)), 1, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0003', N'PF002', CAST(921 AS Decimal(18, 0)), 1, CAST(86 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0003', N'PF003', CAST(161 AS Decimal(18, 0)), 0, CAST(-29 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0003', N'PF004', CAST(918 AS Decimal(18, 0)), 0, CAST(-87 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0003', N'PF005', CAST(590 AS Decimal(18, 0)), 0, CAST(-98 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0004', N'PF001', CAST(454 AS Decimal(18, 0)), 1, CAST(38 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0004', N'PF002', CAST(443 AS Decimal(18, 0)), 0, CAST(-75 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0004', N'PF003', CAST(68 AS Decimal(18, 0)), 0, CAST(-72 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0004', N'PF004', CAST(274 AS Decimal(18, 0)), 0, CAST(-40 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0004', N'PF005', CAST(678 AS Decimal(18, 0)), 0, CAST(-42 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0005', N'PF001', CAST(264 AS Decimal(18, 0)), 1, CAST(64 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0005', N'PF002', CAST(53 AS Decimal(18, 0)), 0, CAST(-64 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0005', N'PF003', CAST(638 AS Decimal(18, 0)), 0, CAST(-18 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0005', N'PF004', CAST(404 AS Decimal(18, 0)), 1, CAST(49 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0005', N'PF005', CAST(862 AS Decimal(18, 0)), 1, CAST(78 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0006', N'PF001', CAST(741 AS Decimal(18, 0)), 1, CAST(57 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0006', N'PF002', CAST(430 AS Decimal(18, 0)), 1, CAST(96 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0006', N'PF003', CAST(490 AS Decimal(18, 0)), 1, CAST(13 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0006', N'PF004', CAST(82 AS Decimal(18, 0)), 0, CAST(-38 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0006', N'PF005', CAST(221 AS Decimal(18, 0)), 1, CAST(66 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0007', N'PF001', CAST(389 AS Decimal(18, 0)), 1, CAST(54 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0007', N'PF002', CAST(378 AS Decimal(18, 0)), 0, CAST(-21 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0007', N'PF003', CAST(902 AS Decimal(18, 0)), 0, CAST(-66 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0007', N'PF004', CAST(548 AS Decimal(18, 0)), 1, CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0007', N'PF005', CAST(497 AS Decimal(18, 0)), 0, CAST(-61 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0008', N'PF001', CAST(876 AS Decimal(18, 0)), 0, CAST(-64 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0008', N'PF002', CAST(50 AS Decimal(18, 0)), 0, CAST(-9 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0008', N'PF003', CAST(918 AS Decimal(18, 0)), 1, CAST(92 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0008', N'PF004', CAST(867 AS Decimal(18, 0)), 1, CAST(53 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0008', N'PF005', CAST(198 AS Decimal(18, 0)), 0, CAST(-47 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0009', N'PF001', CAST(451 AS Decimal(18, 0)), 1, CAST(39 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0009', N'PF002', CAST(155 AS Decimal(18, 0)), 1, CAST(88 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0009', N'PF003', CAST(689 AS Decimal(18, 0)), 1, CAST(54 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0009', N'PF004', CAST(822 AS Decimal(18, 0)), 1, CAST(44 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0009', N'PF005', CAST(915 AS Decimal(18, 0)), 0, CAST(-56 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0010', N'PF001', CAST(299 AS Decimal(18, 0)), 0, CAST(-64 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0010', N'PF002', CAST(339 AS Decimal(18, 0)), 0, CAST(-44 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0010', N'PF003', CAST(481 AS Decimal(18, 0)), 1, CAST(37 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0010', N'PF004', CAST(902 AS Decimal(18, 0)), 0, CAST(-92 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0010', N'PF005', CAST(99 AS Decimal(18, 0)), 1, CAST(11 AS Decimal(18, 0)))
INSERT [dbo].[PlayRecord] ([course_id], [platform_id], [playrecord_play_count], [playrecord_is_growing], [playrecord_growing_rate]) VALUES (N'C0001', N'PF006', CAST(453 AS Decimal(18, 0)), 1, CAST(43 AS Decimal(18, 0)))
GO
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1001', N'admin', N'Administrator', N'51A70A1E25F9E6A8954F54D6DF935B0D', 1, 1, 0, N'../Assets/Images/avatar.png', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1002', N'guest', N'Guest', N'2D64CDF22D0B162AC64F5F7A883DC964', 1, 0, 0, N'../Assets/Images/avatar.png', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1003', N'eleven', N'Eleven', N'C95C977F4EFC60E2717BB730A69470F2', 1, 1, 1, N'../Assets/Images/avatar.png', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1004', N'richard', N'Richard', N'EF60F453E23F1B9B3C45C97C5E1C316E', 1, 1, 1, N'../Assets/Images/avatar.png', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1005', N'clay', N'Clay', N'0E6AE0856E2CDD1E94344562EFF41A23', 1, 1, 1, N'../Assets/Images/avatar.png', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1006', N'garry', N'Garry', N'1FF74A56AE38F179E201BC91F754CBA1', 1, 1, 1, N'../Assets/Images/avatar.png', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1007', N'ace', N'Ace', N'1D4C08127C768A77A1E39CCA5E208F91', 1, 1, 1, N'../Assets/Images/avatar.png', 1)
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1008', N'leah', N'Leah', N'50A1CDDA6D8D09C9021FC490016240B4', 1, 1, 1, N'../Assets/Images/avatar.png', 2)
INSERT [dbo].[Users] ([user_id], [user_name], [user_real_name], [user_password], [user_is_validation], [user_is_can_login], [user_is_teacher], [user_avatar], [user_gender]) VALUES (N'1009', N'jovan', N'Jovan', N'3B9D859D7EF2C8EA60B890FEEFF20912', 1, 1, 1, N'../Assets/Images/avatar.png', 1)
GO
ALTER TABLE [dbo].[courses] ADD  DEFAULT ('') FOR [course_cover]
GO
ALTER TABLE [dbo].[courses] ADD  DEFAULT ('') FOR [course_url]
GO
