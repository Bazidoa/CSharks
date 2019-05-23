USE [aspnet-CSharksWebshop-20190514022942]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
USE [master]
GO
/****** Object:  Database [aspnet-CSharksWebshop-20190514022942]    Script Date: 2019. 05. 15. 11:56:10 ******/
DROP DATABASE [aspnet-CSharksWebshop-20190514022942]
GO
/****** Object:  Database [aspnet-CSharksWebshop-20190514022942]    Script Date: 2019. 05. 15. 11:56:10 ******/
CREATE DATABASE [aspnet-CSharksWebshop-20190514022942]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-CSharksWebshop-20190514022942', FILENAME = N'C:\Users\Precision\aspnet-CSharksWebshop-20190514022942.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-CSharksWebshop-20190514022942_log', FILENAME = N'C:\Users\Precision\aspnet-CSharksWebshop-20190514022942_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-CSharksWebshop-20190514022942].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET QUERY_STORE = OFF
GO
USE [aspnet-CSharksWebshop-20190514022942]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [aspnet-CSharksWebshop-20190514022942]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019. 05. 15. 11:56:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2019. 05. 15. 11:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2019. 05. 15. 11:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2019. 05. 15. 11:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2019. 05. 15. 11:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2019. 05. 15. 11:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905150946232_InitialCreate', N'CSharksWebshop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2FD0FF20E8A92D522B97EE624F606F913A491B9CCD05EBEC9EBE2D68897684952855A4D20407FD65E7E1FCA4F317CE50A26489175D6CC5768A05161639FC66381C92C3E130FFFBCF7FC73F3F8581F58813EA4764621F8D0E6D0B1337F27CB29CD8295BFCF8CEFEF9FDB7DF8C2FBCF0C9FA5CD09D703A6849E8C47E602C3E751CEA3EE010D151E8BB4944A3051BB951E8202F728E0F0FFFE11C1D3918206CC0B2ACF1C794303FC4D9077C4E23E2E298A528B88E3C1C50510E35B30CD5BA4121A63172F1C49ECE1E50F295FE0BCFE943148FF206B67516F8088499E160615B8890882106A29E7EA278C692882C673114A0E0FE39C640B74001C5A20BA72BF2AEBD393CE6BD71560D0B2837A52C0A7B021E9D08F53872F3B5946C97EA03055E80A2D933EF75A6C4897DE5E1ACE8631480026486A7D320E1C413FBBA647146E31BCC4645C3510E799900DC9F51F27554453CB03AB73B28CDE97874C8FF1D58D3346069822704A72C41C1817597CE03DFFD277EBE8FBE623239399A2F4EDEBD798BBC93B73FE19337D59E425F81AE560045774914E30464C38BB2FFB6E5D4DB3972C3B259A54DAE15B0259819B6758D9E3E60B2640F30678EDFD9D6A5FF84BDA24418D727E2C34482462C49E1F3260D02340F7059EF34F2E4FF37703D7EF37610AE37E8D15F66432FF1878993C0BCFA8883AC963EF8713EBD6AE3FD45905D2651C8BFEBF695D77E994569E2F2CE4446927B942C31AB4B377656C6DBC9A439D4F0665DA0EEBF69734955F3D692F20EAD33130A16DB9E0D85BC2FCBB7B3C59DC5310C5E665A5C234D06A7DDAF461200D8478D6C6540475D0D8840C7FECEEBE14588FC608005B103177047167E12E2B297BF44607E88F496F90E510AEB81F71BA20F0DA2C3CF01449F61374DC04C670C85F18B73BB7B8808BE49C339B7FEEDF11A6C68EEFF8C2E91CBA2E482F0561BE37D88DCAF51CA2E88778E18FEC4DC02907FDEFB61778041C439735D4CE9251833F6A61178DB05E0156127C7BDE1F81AB56B87641A203FD47B24D26AFAA5205D79257A0AC5333190E9BC9326513F444B9F7413B520358B9A53B48A2AC8FA8ACAC1BA492A28CD826604AD72E65483F97BD9080DEFF065B0FBEFF16DB6799BD6828A1A67B042E25F31C1092C63DE1D620C276435025DD68D5D380BD9F071A62FBE37659C3EA3201D9AD55AB3215B04869F0D19ECFECF864C4C287EF43DEE9574380615C400DF895E7FC26A9F739264DB9E0EB56E6E9BF976D600D37439A33472FD6C16680260227C51971F7C38AB3D9691F7468E8740C7C0D07DBEE54109F4CD968DEA969CE300336C9DB97980708AA88B3C558DD021AF8760C58EAA116C1517A90BF783C2132C1D27BC11E287200A33D5274C9D163E71FD1805AD5A925A76DCC278DF4B1E72CD398E31E10C5B35D185B93E0CC20528F94883D2A6A1B153B1B866433478ADA6316F736157E3AE4427B662932DBEB3C12E85FFF62286D9ACB12D1867B34ABA08600CE9EDC240C559A5AB01C807977D3350E9C4643050E1526DC540EB1ADB8181D655F2EA0C343FA2761D7FE9BCBA6FE6593F286F7F5B6F54D70E6CB3A68F3D33CDDCF784360C5AE04435CFF339AFC44F4C73380339C5F98C0A575736110E3EC3AC1EB259F9BB5A3FD46906918DA8097065682DA0E23250015226540FE18A585EA374C28BE8015BC4DD1A61C5DA2FC1566C40C5AE5E8A5608CD57A7B271763A7D943D2BAD4131F24E87850A8EC620E4C5ABDEF10E4A31C56555C574F185FB78C3958E89C16850508BE76A5052D199C1B5549866BB96740E591F976C232D49EE93414B456706D792B0D17625699C821E6EC1462AAA6FE1034DB622D251EE3665DDD8C9D3A544C1D831E4558DAF511CFB6459C9B31225D64C2459FD38EB9F7A14E6188E4B351948A5B4252716256889A55A600D925EFA0965E788A139E2719EA9172A64DABDD5B0FC172CABDBA73A88C53E5050F3DF22C6ABBDC2AF6DB7AA3F22602EA19321776AB248BAC604F4CD2D9EFA8602946882F7D328484362F6B1CCADF32BBC6AFBBC4445183B92FC8A0FA5284CF174EBDAEF3436EABC186E9C4A2F66FDB1324398345EF8A0559D9BFC52334A11A6AAA29842573B1B3B933BD377BC6467B1FF70B522BCCCEC12192A550051D413A392E4A08055EABAA3D6F350AA98F59AEE8852B2491552AAEA216535A5A42664B5622D3C8346F514DD39A849245574B5B63BB2269DA40AADA95E035B23B35CD71D5593715205D65477C75EA59FC8EBE81EEF5FC623CC261B587ED0DD6C073360BCCCA238CC0658B9CFAF02558A7B62891B7B054C94EFA541194F7B9B18541EE2D8CCA00C18E6F5A776195E5F7E1A6FF0CD98B51BEEDA12DF74C36FC6EB67B62F6A1CCA794F2629B997E73EE97C371667AD0E8F6BE4C3574E625B851A617B7FA60C87234E309AFD114C031FF3C5BC20B846C45F60CAF2AC0EFBF8F0E8587A9CB33F0F651C4ABD40735635BD96A98FD91612B4C8234A5C98C16ABAC4068F4956A04A24FA8A78F86962FF3B6B759A0535F8AFACF8C0BAA29F88FF470A15F7498AADBFD4F4CF6192EB3B3CE72805FDEB55BC93E8AEF2ABDFBFE44D0FACDB04A6D3A97528297A9DE1AFBF9EE8254DDE740369D67E53F17A675BEDA98216559A2DEBBF4C98FB6C9057098594DF85E8E9FBBEA2695F1E6C84A8795D3014DE202A34BD1E5807CBF872C0834F96BD1CE8D759FD4B82754433BE22F0497F30F90D41F765A868B9C37D487366DAC69294E9B935077BA384CC5DEF4D4AAAF646135D4DC7EE013768CAF5662ECA2B4B651E6CEBD4642A0F86BD4BBB7FF1F4E47DC9485E39EDBB4D44DE66EE71C3CDD2DF2AE5780F92E434493FBB4F2CDEB6AD9982C07B9E9DD92F7D78CF8C4D6CF3BB4F12DEB6B19902C47B6E6CBD5281F7CCD676B57FEED8D23A6FA13B4FEC5573940C9739BA28725BE26E1E7287E3FF3C0223C83DCAFCBDA53E53AC29CBB585E18AC4CCD49CA2263356268EC257A16866DBAFAF62C36FECACA069666B48EC6CE22DD6FF46DE82A699B7215D721729C7DA84455D1A78CB3AD69447F59A528C6B3D69C9686FF3591B6FE65F5346F1204AA9CD1EC3EDF2EB49201E4425434E9D1E09C3EA4531EC9D95BFD508FB37F5972B08FE971B09766BBB664973451651B1794B1215245284E61A33E4C1967A96307F815C06D53C009D3D18CF827AFC1A648EBD2B729BB23865D0651CCE835AC08B3B014DFCB3ACE8BACCE3DB987FD121BA0062FA3C707F4B7E49FDC02BE5BED4C4840C10DCBB10E15E3E968C877D97CF25D24D443A0209F5954ED13D0EE300C0E82D99A147BC8E6C607E1FF012B9CFAB08A009A47D20EA6A1F9FFB6899A0900A8C557BF8041BF6C2A7F7FF07BBA09644B2540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Admin')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Customer')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'RootAdmin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8e4cef87-3fe0-4a32-a39f-39ddfeb1a03f', N'1')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'09dea4c3-653d-4581-91dc-e577cf0080be', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2d5edb0f-97d5-466d-80b6-fce06c16bb08', N'3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'09dea4c3-653d-4581-91dc-e577cf0080be', N'admin@admin.hu', 0, N'AI11uzk7z7gEWmxvsMkDM2wv7hm5aOwGY+/P+dpaqWDBpKIAoxqkR7aS9ymnzMDERw==', N'9d2c7b12-71d9-4196-9b22-5b1beeea9112', NULL, 0, 0, NULL, 1, 0, N'admin@admin.hu')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2d5edb0f-97d5-466d-80b6-fce06c16bb08', N'rootadmin@rootadmin.hu', 0, N'AHCDlEXWjE1CkiChpEReLMg4hXipSYPgn/KOPuhPnIRw4yFWBSt7c8D9QGtkXGhcUQ==', N'3eee8766-1c62-45a7-ba6f-4f2514e28513', NULL, 0, 0, NULL, 1, 0, N'rootadmin@rootadmin.hu')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8e4cef87-3fe0-4a32-a39f-39ddfeb1a03f', N'user@user.hu', 0, N'AB5XPsbxO1PRRqzwnFKRoCA+sS7B7ZWCwgATmvPGJZJePtYwyEYIBckM017jobVFqA==', N'4db4af8e-e208-4aa8-9ef3-0e9b97f6ccf1', NULL, 0, 0, NULL, 1, 0, N'user@user.hu')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2019. 05. 15. 11:56:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019. 05. 15. 11:56:11 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019. 05. 15. 11:56:11 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019. 05. 15. 11:56:11 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019. 05. 15. 11:56:11 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2019. 05. 15. 11:56:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [aspnet-CSharksWebshop-20190514022942] SET  READ_WRITE 
GO
