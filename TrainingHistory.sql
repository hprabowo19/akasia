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

 Date: 06/03/2023 22:22:59
*/


-- ----------------------------
-- Table structure for TrainingHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TrainingHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[TrainingHistory]
GO

CREATE TABLE [dbo].[TrainingHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [PosId] varchar(10) COLLATE Latin1_General_CI_AS  NOT NULL,
  [PosTitle] varchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [EmployeeId] varchar(10) COLLATE Latin1_General_CI_AS  NOT NULL,
  [StartDate] date  NOT NULL,
  [EndDate] date  NOT NULL
)
GO

ALTER TABLE [dbo].[TrainingHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TrainingHistory
-- ----------------------------
SET IDENTITY_INSERT [dbo].[TrainingHistory] ON
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'1', N'50000', N'Amazon Web Service', N'10105001', N'2022-01-01', N'2022-01-31')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'2', N'50001', N'Oracle Certified', N'10105001', N'2022-02-01', N'2022-02-28')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'3', N'50002', N'Scrum Developer', N'10105002', N'2022-03-01', N'2022-03-31')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'4', N'50003', N'SAP Certifications', N'10105002', N'2022-04-01', N'2022-04-30')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'5', N'50004', N'IBM Mobile Apps', N'10105003', N'2022-05-01', N'2022-05-31')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'6', N'50005', N'Android  Certified', N'10105003', N'2022-06-01', N'2022-06-30')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'7', N'50006', N'Sql Server Sertifications', N'10105004', N'2022-01-01', N'2022-01-31')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'8', N'50007', N'EMC Data Scientist', N'10105004', N'2022-02-01', N'2022-02-28')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'9', N'50008', N'CompTIA Cloud', N'10105005', N'2022-03-01', N'2022-03-31')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'10', N'50009', N'Google Cloud Certified', N'10105005', N'2022-04-01', N'2022-04-30')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'11', N'50010', N'Microsoft Specialist', N'10105006', N'2022-05-01', N'2022-05-31')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'12', N'50011', N'Google IT Support', N'10105006', N'2022-06-01', N'2022-06-30')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'13', N'50012', N'Mikrotik Certifications', N'10105007', N'2022-01-01', N'2022-01-31')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'14', N'50013', N'Cisco Internetwork', N'10105007', N'2022-02-01', N'2022-02-28')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'15', N'50014', N'Oracle OCP Certified', N'10105008', N'2022-03-01', N'2022-03-31')
GO

INSERT INTO [dbo].[TrainingHistory] ([Id], [PosId], [PosTitle], [EmployeeId], [StartDate], [EndDate]) VALUES (N'16', N'50015', N'MongoDB Certifications', N'10105008', N'2022-04-01', N'2022-04-30')
GO

SET IDENTITY_INSERT [dbo].[TrainingHistory] OFF
GO


-- ----------------------------
-- Auto increment value for TrainingHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TrainingHistory]', RESEED, 16)
GO


-- ----------------------------
-- Primary Key structure for table TrainingHistory
-- ----------------------------
ALTER TABLE [dbo].[TrainingHistory] ADD CONSTRAINT [PK__2_Traini__3214EC071273C1CD] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

