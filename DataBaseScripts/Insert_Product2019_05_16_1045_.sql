USE [CSharksWebshop.DataModels.WebshopModel]
GO
--/****** Object:  Table [dbo].[Products]    Script Date: 2019. 05. 16. 10:44:51 ******/
--DROP TABLE [dbo].[Products]
--GO
--/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019. 05. 16. 10:44:51 ******/
--DROP TABLE [dbo].[__MigrationHistory]
--GO
--USE [master]
--GO
--/****** Object:  Database [CSharksWebshop.DataModels.WebshopModel]    Script Date: 2019. 05. 16. 10:44:51 ******/
--DROP DATABASE [CSharksWebshop.DataModels.WebshopModel]
--GO
--/****** Object:  Database [CSharksWebshop.DataModels.WebshopModel]    Script Date: 2019. 05. 16. 10:44:51 ******/
--CREATE DATABASE [CSharksWebshop.DataModels.WebshopModel]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'CSharksWebshop.DataModels.WebshopModel', FILENAME = N'C:\Users\Training\CSharksWebshop.DataModels.WebshopModel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'CSharksWebshop.DataModels.WebshopModel_log', FILENAME = N'C:\Users\Training\CSharksWebshop.DataModels.WebshopModel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET COMPATIBILITY_LEVEL = 130
--GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [CSharksWebshop.DataModels.WebshopModel].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET ANSI_NULL_DEFAULT OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET ANSI_NULLS OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET ANSI_PADDING OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET ANSI_WARNINGS OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET ARITHABORT OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET AUTO_CLOSE ON 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET AUTO_SHRINK OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET AUTO_UPDATE_STATISTICS ON 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET CURSOR_CLOSE_ON_COMMIT OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET CURSOR_DEFAULT  GLOBAL 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET CONCAT_NULL_YIELDS_NULL OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET NUMERIC_ROUNDABORT OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET QUOTED_IDENTIFIER OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET RECURSIVE_TRIGGERS OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET  ENABLE_BROKER 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET DATE_CORRELATION_OPTIMIZATION OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET TRUSTWORTHY OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET PARAMETERIZATION SIMPLE 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET READ_COMMITTED_SNAPSHOT ON 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET HONOR_BROKER_PRIORITY OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET RECOVERY SIMPLE 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET  MULTI_USER 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET PAGE_VERIFY CHECKSUM  
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET DB_CHAINING OFF 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET DELAYED_DURABILITY = DISABLED 
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET QUERY_STORE = OFF
--GO
--USE [CSharksWebshop.DataModels.WebshopModel]
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
--GO
--USE [CSharksWebshop.DataModels.WebshopModel]
--GO
--/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019. 05. 16. 10:44:52 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[__MigrationHistory](
--	[MigrationId] [nvarchar](150) NOT NULL,
--	[ContextKey] [nvarchar](300) NOT NULL,
--	[Model] [varbinary](max) NOT NULL,
--	[ProductVersion] [nvarchar](32) NOT NULL,
-- CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
--(
--	[MigrationId] ASC,
--	[ContextKey] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[Products]    Script Date: 2019. 05. 16. 10:44:52 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[Products](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[ProductName] [nvarchar](max) NOT NULL,
--	[ProductPrice] [int] NOT NULL,
--	[IsAvailable] [bit] NOT NULL,
--	[ProductDescription] [nvarchar](max) NULL,
--	[InStock] [int] NOT NULL,
--	[UrlFriendlyName] [nvarchar](max) NOT NULL,
--	[Manufacturer] [nvarchar](max) NULL,
-- CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905160836546_ProductsRecreated', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400CD58CB6EE33614DD17E83F085CB540C6CC63D306F20C32765C189D3C304AA66B5ABAB68950A44A5286FD6DB3E827F5177A25516FDBB19DA02DBCB148DEC3730FC9C32BFDFDFD2FFFD33A16DE0AB4E14A0EC9C5E09C7820431571B91892D4CE3FFC423E7DFCF107FF368AD7DEB772DC55360E23A51992A5B5C935A5265C42CCCC20E6A15646CDED2054316591A297E7E7BFD28B0B0A084110CBF3FCAFA9B43C86FC011F474A8690D894893B158130AE1D7B821CD5BB67319884853024A360C9F48BF9036666A992C19859560411EF46708684021073E23129956516E95E3F1B08AC56721124D8C0C4D326011C3767C2804BE3BA1E7E6846E7975946B40E2CA1C2D458151F097871E524A2DDF0938426958428E22D8A6D3759D6B99043F2A85594869678DDB9AE474267E37A3217120F5CE099D7EE3EAB76066EA0EC87035261530D4309A9D54C9C798FE94CF0F077D83CA9179043990AD1248934B1AFD5804D385F02DA6EBEC2DC519F8E8947DB71B41B588535628AACA6D25E5D12EF1E27673301D51E68281058A5E13790A09985E891590B1A97701A41AE626FF6CE5C4EA1ECA19C14F71E9E26E2DDB1F517900BBB1C12FC4BBC095F4354B63822CF92E3E1C320AB53D842F4A0C91F350FE1B594F7234DCDCD8AF13CA204FAAC9400264F253506136A9E143BFACDC2BCC25EE22A862F6F93E0598B89E62023B1F96F56F38EC974CEC2EC18E97796CCA7B527F49D02EDD8328E27C01171A73CF7802D9E81F6EA6CC3B8B9DA6915A001D8F68640C3AE4914AE3DA88C691BD98A567D3DD0E27E28EF11BAE322F1EF5892A06E8D8BC5B57881BB553E04C7FB6C5C60D0D06CB1DB8A6D35131A0B5B40A717A746A613AE8DCDAEB219CB566E14C5BD61AD45D82170395547E7AEABD6B29701D9FF2268E7F55AAD4D07ADD67282E9C5E89279A65091AAAF9B5E647EC133C1F416C31E2991C67297E9EF8B6E597013A6D571349E73D52D80AEE770C496BBB6126D761CCDB065B15B78B6FA8F605BBA698B69D978384ECF509B78BDCEC371DB3ED9046DF7F4117DDAD9BADD93427B47A5537A748FDE3EDBEA0EA966AFECAB6353BEB38C038AE2AE871443888752AD7894F947B03116E2FC400F823FC548A0D8B61E8052F139185B5467040BD2CB4E41FDFF296EA9319138ACC2FDD72B4C9E89FA6A0D795A09D52C43E48AE910ADFAA798AD7F7E97423167FEF63271C68F87D95D22EE4CF38432F094047714816F537F5B617744A2C7156FFDF2E2A0EA6C5F715698CB90443385F40B9A75517762E9D6F73A9F363F13F8B83BF8A286C83E1A4808B3CD52839663A672AE4AD131B526A37248774DC0B20815BAD196676B83DD21189317DBDF984871C86D3C83682A1F529BA4F6C6188867A2F53EE8D3FDF3E7F5699BB3FF906F77F31E29204D8E29C083FC9C721155BC27FD3DB90B22DB2CCEB79015BE6C20DC625321DD2B792090936F0C099E1D74BD2788138160E641066C05A770C3D78C2FB060E1A6BCB27683BCBE106DD9FD31670BCD62E330EAF8ECD317CDBE7D7DFC0728E8B1DA2D130000, N'6.2.0-61023')
--GO
--SET IDENTITY_INSERT [dbo].[Products] ON 
--GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer]) VALUES (1, N'Test Próduct', 1000, 1, NULL, 4, N'test-product', N'CSharks Zrt.')
GO
--SET IDENTITY_INSERT [dbo].[Products] OFF
--GO
--USE [master]
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET  READ_WRITE 
--GO
