/*
 Navicat Premium Data Transfer

 Source Server         : RS - STG
 Source Server Type    : SQL Server
 Source Server Version : 10501600 (10.50.1600)
 Source Host           : 202.150.130.252:1433
 Source Catalog        : dbAKASIA
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10501600 (10.50.1600)
 File Encoding         : 65001

 Date: 06/03/2023 22:22:50
*/


-- ----------------------------
-- Table structure for Employee
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type IN ('U'))
	DROP TABLE [dbo].[Employee]
GO

CREATE TABLE [dbo].[Employee] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [EmployeeId] varchar(10) COLLATE Latin1_General_CI_AS  NOT NULL,
  [FullName] varchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [BirthDate] date  NOT NULL,
  [Address] varchar(500) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Employee] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Employee
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Employee] ON
GO

INSERT INTO [dbo].[Employee] ([Id], [EmployeeId], [FullName], [BirthDate], [Address]) VALUES (N'1', N'10105001', N'Yogi Ali Rahman', N'1980-08-19', N'Cimahi')
GO

INSERT INTO [dbo].[Employee] ([Id], [EmployeeId], [FullName], [BirthDate], [Address]) VALUES (N'2', N'10105002', N'Aep Saepudin', N'1981-01-01', N'Tangerang')
GO

INSERT INTO [dbo].[Employee] ([Id], [EmployeeId], [FullName], [BirthDate], [Address]) VALUES (N'3', N'10105003', N'Eko Handoko', N'1981-05-16', N'Cimahi')
GO

INSERT INTO [dbo].[Employee] ([Id], [EmployeeId], [FullName], [BirthDate], [Address]) VALUES (N'4', N'10105004', N'Taufik Kurniawan', N'1981-09-28', N'Jakarta')
GO

INSERT INTO [dbo].[Employee] ([Id], [EmployeeId], [FullName], [BirthDate], [Address]) VALUES (N'5', N'10105005', N'Indra Hermawan', N'1982-02-10', N'Depok')
GO

INSERT INTO [dbo].[Employee] ([Id], [EmployeeId], [FullName], [BirthDate], [Address]) VALUES (N'6', N'10105006', N'Sahal Fadli', N'1982-06-25', N'Semarang')
GO

INSERT INTO [dbo].[Employee] ([Id], [EmployeeId], [FullName], [BirthDate], [Address]) VALUES (N'7', N'10105007', N'Nurlaela', N'1982-11-07', N'Jakarta')
GO

INSERT INTO [dbo].[Employee] ([Id], [EmployeeId], [FullName], [BirthDate], [Address]) VALUES (N'8', N'10105008', N'Rina Fakhri', N'1983-03-22', N'Bandung')
GO

SET IDENTITY_INSERT [dbo].[Employee] OFF
GO


-- ----------------------------
-- Auto increment value for Employee
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Employee]', RESEED, 8)
GO


-- ----------------------------
-- Primary Key structure for table Employee
-- ----------------------------
ALTER TABLE [dbo].[Employee] ADD CONSTRAINT [PK__2_Employ__3214EC07182C9B23] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

