USE [CSharksWebshop.DataModels.WebshopModel]
GO
--ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_dbo.Products_dbo.Baskets_Basket_ID]
--GO
--/****** Object:  Index [IX_Basket_ID]    Script Date: 2019. 05. 17. 15:28:28 ******/
--DROP INDEX [IX_Basket_ID] ON [dbo].[Products]
--GO
--/****** Object:  Table [dbo].[Products]    Script Date: 2019. 05. 17. 15:28:28 ******/
--DROP TABLE [dbo].[Products]
--GO
--/****** Object:  Table [dbo].[Baskets]    Script Date: 2019. 05. 17. 15:28:28 ******/
--DROP TABLE [dbo].[Baskets]
--GO
--/****** Object:  Table [dbo].[BasketEntries]    Script Date: 2019. 05. 17. 15:28:28 ******/
--DROP TABLE [dbo].[BasketEntries]
--GO
--/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019. 05. 17. 15:28:28 ******/
--DROP TABLE [dbo].[__MigrationHistory]
--GO
--USE [master]
--GO
--/****** Object:  Database [CSharksWebshop.DataModels.WebshopModel]    Script Date: 2019. 05. 17. 15:28:28 ******/
--DROP DATABASE [CSharksWebshop.DataModels.WebshopModel]
--GO
--/****** Object:  Database [CSharksWebshop.DataModels.WebshopModel]    Script Date: 2019. 05. 17. 15:28:28 ******/
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
--/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019. 05. 17. 15:28:28 ******/
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
--/****** Object:  Table [dbo].[BasketEntries]    Script Date: 2019. 05. 17. 15:28:28 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[BasketEntries](
--	[UserID] [nvarchar](128) NOT NULL,
--	[ProductID] [int] NOT NULL,
--	[Quantity] [int] NOT NULL,
--	[OrderTime] [datetime] NULL,
-- CONSTRAINT [PK_dbo.BasketEntries] PRIMARY KEY CLUSTERED 
--(
--	[UserID] ASC,
--	[ProductID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[Baskets]    Script Date: 2019. 05. 17. 15:28:28 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[Baskets](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[UserID] [nvarchar](max) NULL,
-- CONSTRAINT [PK_dbo.Baskets] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[Products]    Script Date: 2019. 05. 17. 15:28:28 ******/
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
--	[UrlFriendlyName] [nvarchar](max) NULL,
--	[Manufacturer] [nvarchar](max) NULL,
--	[Basket_ID] [int] NULL,
-- CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905141234527_WebshopModel_Product_Created', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400CD58DB6EDB46107D2FD07F20F8D4028ED6965F52834AE048762134B28DD0499E57E4485A782FECEE5290BE2D0FFDA4FE4287E4F2AA4B44392D0ABD88BB3367CECCCE1E8EF4F7B7BF82F71BC1BD3568C3941CF957834BDF0319A998C9E5C84FEDE2CD5BFFFDBB9F7F0AEE62B1F1BE9476D7991D7A4A33F257D6263784986805829A81609156462DEC205282D05891E1E5E56FE4EA8A0042F888E579C1A7545A26207FC0C7B192112436A57CA662E0C6ADE34E98A37A0F5480496804237F1CAEA87E315F616E562A194CA8A58593EFDD72469150087CE17B544A65A945BA379F0D84562BB90C135CA0FC799B00DA2D2837E0D2B8A9CD4FCDE8729865446AC7122A4A8D55A227E0D5B52B11E9BA9F5568BF2A2116F10E8B6DB759D6792147FE9356711A59DFEBC6BA19739DD9ED94B928F1C0395E78EDED8BAA33B081B20F1AA4DCA61A461252AB29BFF09ED23967D11FB07D562F204732E5BC491269E25E6B0197305E02DA6E3FC1C2519F4E7C8FB4FD48D7B1726BF81459611B6063FBDE8C6E3E825CDA15B6FCF0ADEFDDB30DC4E58AEB8BCF92E13D4027AB537C7C40C274CEA1DA274763BA4A650F4782E3D793829F14EB49B3A80A3695F67AD89BF5D4DCAE29CB3D4AA00F4A71A0F2DC024CC0449A254523FFCB7598CAD0AAE8A54F0902525F8EDD2B83BA642993A05D00D7EEF965D873795067DCFD318E709B6E011A826D970895AB2651C8D7A0BAA1FBC856B46A9D24855096824A0E286A30A34982C56F28AC5BF14227AF6FC2FE82230A0C12993DBA53B1AD2259A5E9123ABB181A99DE336D6CA6E9739A1DD538163B66AD433850E03254A7CE5D79A9CB5E3A64DF0BA783EF99EA6C3A68752DEF313D01D2E6994245AAD6DD1DCFFC4D4739D57B946BAC782AE421F53BE6DDD2A0264C6BA3379ED3993D806EE774C496DEB4126D6EF466D8129D3D3C5BFB3DD896FAD2625A2EEEE204A4D310DDFE233B0DD879B3751BFA9818744DAAE89528742E7FE02EE2093357F7661626BE87055AB338BB95E1D65810F93519847FF23167986F6D30A3922DC0D8E2E5EFE3BC33ECCC6BFF9FD9891813F3D306A8FF7C80916BAA2314A6DD11E6F5F34989FD8BA09B5F9B80E7CE202CEB80D74F2073D61FE6F0F4F1AA2C3B13C6F713EC375FECBE014F1A208ECD0FC54D1DF9F15C21EB82673D779C395DEC0A47409A3FE902AC3B5BD610D90F3C0951760C35686933950B559619536B322A4D3AA730034B63ACD0ADB66C41B3A6531118930F955F284FD1E44ECC219ECAC7D426A9BD3506C49C6F9BF906E478FC7C846A730E1EF346323F2205A4C9300578941F52C6E38AF7FD9E163A009135CBEF80EBB9D2E1508D70CB6D85F4A0E48940AE7C134840C6A8DACF20128E60E65186740DE770C349F8232C69B42DF5FF30C8F70FA25DF660C2E85253611C46ED9FFD4D41B2FF29DEFD0319B56587D9100000, N'6.2.0-61023')
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905160836546_ProductsRecreated', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400CD58CB6EE33614DD17E83F085CB540C6CC63D306F20C32765C189D3C304AA66B5ABAB68950A44A5286FD6DB3E827F5177A25516FDBB19DA02DBCB148DEC3730FC9C32BFDFDFD2FFFD33A16DE0AB4E14A0EC9C5E09C7820431571B91892D4CE3FFC423E7DFCF107FF368AD7DEB772DC55360E23A51992A5B5C935A5265C42CCCC20E6A15646CDED2054316591A297E7E7BFD28B0B0A084110CBF3FCAFA9B43C86FC011F474A8690D894893B158130AE1D7B821CD5BB67319884853024A360C9F48BF9036666A992C19859560411EF46708684021073E23129956516E95E3F1B08AC56721124D8C0C4D326011C3767C2804BE3BA1E7E6846E7975946B40E2CA1C2D458151F097871E524A2DDF0938426958428E22D8A6D3759D6B99043F2A85594869678DDB9AE474267E37A3217120F5CE099D7EE3EAB76066EA0EC87035261530D4309A9D54C9C798FE94CF0F077D83CA9179043990AD1248934B1AFD5804D385F02DA6EBEC2DC519F8E8947DB71B41B588535628AACA6D25E5D12EF1E27673301D51E68281058A5E13790A09985E891590B1A97701A41AE626FF6CE5C4EA1ECA19C14F71E9E26E2DDB1F517900BBB1C12FC4BBC095F4354B63822CF92E3E1C320AB53D842F4A0C91F350FE1B594F7234DCDCD8AF13CA204FAAC9400264F253506136A9E143BFACDC2BCC25EE22A862F6F93E0598B89E62023B1F96F56F38EC974CEC2EC18E97796CCA7B527F49D02EDD8328E27C01171A73CF7802D9E81F6EA6CC3B8B9DA6915A001D8F68640C3AE4914AE3DA88C691BD98A567D3DD0E27E28EF11BAE322F1EF5892A06E8D8BC5B57881BB553E04C7FB6C5C60D0D06CB1DB8A6D35131A0B5B40A717A746A613AE8DCDAEB219CB566E14C5BD61AD45D82170395547E7AEABD6B29701D9FF2268E7F55AAD4D07ADD67282E9C5E89279A65091AAAF9B5E647EC133C1F416C31E2991C67297E9EF8B6E597013A6D571349E73D52D80AEE770C496BBB6126D761CCDB065B15B78B6FA8F605BBA698B69D978384ECF509B78BDCEC371DB3ED9046DF7F4117DDAD9BADD93427B47A5537A748FDE3EDBEA0EA966AFECAB6353BEB38C038AE2AE871443888752AD7894F947B03116E2FC400F823FC548A0D8B61E8052F139185B5467040BD2CB4E41FDFF296EA9319138ACC2FDD72B4C9E89FA6A0D795A09D52C43E48AE910ADFAA798AD7F7E97423167FEF63271C68F87D95D22EE4CF38432F094047714816F537F5B617744A2C7156FFDF2E2A0EA6C5F715698CB90443385F40B9A75517762E9D6F73A9F363F13F8B83BF8A286C83E1A4808B3CD52839663A672AE4AD131B526A37248774DC0B20815BAD196676B83DD21189317DBDF984871C86D3C83682A1F529BA4F6C6188867A2F53EE8D3FDF3E7F5699BB3FF906F77F31E29204D8E29C083FC9C721155BC27FD3DB90B22DB2CCEB79015BE6C20DC625321DD2B792090936F0C099E1D74BD2788138160E641066C05A770C3D78C2FB060E1A6BCB27683BCBE106DD9FD31670BCD62E330EAF8ECD317CDBE7D7DFC0728E8B1DA2D130000, N'6.2.0-61023')
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905161228229_urlfriendlyNotRequired', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400CD58DB6EE336107D2FD07F10F8D4025933979736907791B5E3C2E8E68255B27DA6A5B14D8422559232EC6FEB433FA9BFD09144DD6DC77682C5C22F163973E6CC903C1CE9BF7FFEF53FAD63E1AD401BAEE4905C0CCE8907325411978B2149EDFCC36FE4D3C79F7FF26FA378ED7D2BEDAE323BF494664896D626D7949A700931338398875A1935B78350C594458A5E9E9FFF4E2F2E282004412CCFF3BFA6D2F218F2077C1C291942625326EE5404C2B8719C097254EF9EC5601216C2908C8225D32FE62F9899A54A06636659E144BC1BC119120A40CC89C7A4549659A47BFD6C20B05AC94590E000134F9B04D06ECE840197C6756D7E6846E7975946B4762CA1C2D458151F097871E54A44BBEE27159A5425C422DE62B1ED26CB3A2FE4903C6A15A5A1255E37D6F548E8CCAE57E6A2C403E778E6B5A7CFAA9D811B28FBA1412A6CAA612821B59A8933EF319D091EFE099B27F502722853219A249126CEB5067008E325A0EDE62BCC1DF5E99878B4ED47BB8E955BC3A7C86A2AEDD525F1EE31389B09A8F640A30281551AFE00099A59881E99B5A07109A711E455EC45EFC47215CA1ECAA0B8F7F03411EF8EADBF805CD8E590E05FE24DF81AA272C41179961C0F1F3A599DC216A207057FD43C84D752DE8F3435372BC6738F12E8B35202983C95D4184CA87952ECE83717E615F61257317C795B099EB598680E32129B775ACDFDF1EE984CE72CCC4E8D7EE7603EAD25A02F0CA8BE9671DCF08E883BD4F991DF2211A8A64E258C8BD54EAB000DC0B6D71FF5B9265188F4A0D2A16D642B5AF56D408BEBA0BC36E88E7BC3BF634982756BDC236EC40BDC25F221385E56E3028386668BBA566CAB48A8236C019D590C8D4C275C1B9BDD5C3396ADDC288A7B66AD45D851E03254A7CE5D11ADCB5E3A64FF0BA79DB769B5361DB4BA96134C2F4651CC33858A547DBBF43CF3FB9C09A6B7E8F348893496BB347E9F774B719B30AD89A3F19C886E0174338723B6C4B4956873E268862D45DDC2B3357F04DB523C5B4CCBC1C3717AFAD9C4EB4D1E8EDBD6C926687BA68FE8D3CED6ED9E14DA3B2A9D4EA37BF4F6C956D7A48A5EC95747A67C271907F4C05D0D294C8887A55AF128D38F60632CC4F9811E047F8B91C062DBDA004BC5E7606CD18C11EC3F2F3BFDF38FD3CB526322715843FBDD1B4A9E15F5D596F1B48EA9D975C815D3214AF52F315BFFFA2E7D61CEFCED5DE18C1F0FB3BB23DC99E6095DDF2909EEE8F9DE446B5B5F7704E071BD5BBFBB38A839DBD79B15DA3224D14C21FD8266DDD39DD8B9F5A5CEA7CD8F023E6E0EBEA821B24F0412C26CAFD4A0A5CD54CE5559744CADC9A834E9AE09581661856EB4E5D9DAE07408C6E4BDF637265234B98D67104DE5436A93D4DE1803F14CB4DEFE7CBA3F7EDE9EB639FB0FF96E37EF9102D2E498023CC8CF291751C57BD2DFE7BB20B2CDE2640B59E1BB06C22D3615D2BD920702B9F28D21C1A383A2F704712210CC3CC880ADE0146EF896F105162CDC9437D66E90D717A25D767FCCD942B3D8388CDA3FFBD045B32F5D1FFF074546B5061B130000, N'6.2.0-61023')
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905161349469_BasketDBset_IDAdded', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400ED59DB6EE336107D2FD07F10F4D41659CBC9BE6C037B17B91646371744D96DDF16B434768850944A52818DA25FD6877E527FA143DD4959B6E46483A228F212899CC399E15C8EC67FFFF9D7E4C32A62CE130849633E750F4763D7011EC421E5CBA99BAAC59B77EE87F7DF7E33B908A395F3B9DCF756EF43492EA7EE8352C9B1E7C9E001222247110D442CE3851A0571E49130F68EC6E31FBDC3430F10C2452CC799DCA55CD108B2077C3C8B7900894A09BB8A4360B2788F2B7E86EA5C930864420298BA67FE03118FF21798CB8738199D13457221D7396194A0423EB085EB10CE634514AA7BFC4982AF44CC977E822F08BB5F2780FB16844928CC38AEB7F7B5687CA42DF26AC1122A48A58AA38180876F0B1779B6F85E8E762B17A2132FD0D96AADADCE1C39754F897C04E53AF651C7674CE86D2D2FE71E1EE572078EB97A50C505868FFEC30D2953A98029875409C20E9CDB74CE68F033ACEFE347E0539E32D6541195C435E305BEBA15710242ADEF6051283E3B771DCF94F36CC14AAC21931B35E3EAED91EB5CE3E164CEA08A8086037C150BF8093808A220BC254A81C00B9C8590F9B075BA7516469A9885E57918749846AE7345561F812FD5C3D4C57F5DE792AE202CDF143A7CE214B30E859448A175CC3579A2CB4C43EB407C0CD34061F0DF01CB36C8079AE439505CD7977ACFA588A3BB985511502D7DF1E3540478EE7DBC79FD9E88A58E98A65E13AF0EACADE156A00C8FB742F0FF80EB3CABF0907E7881A86B29DAEBF05B4103D865F276A4993C7922349328814E630C44C2F755EA1C6420689217D0974E475B7B8EB7183C3ECF059F04BB141478C8D62F749BDBCFBB223C5D9040678D78E1C3BA0AC389947140B3B8371A515DA14C8D2F78E8EC2857B9DA75B143DDB112D004731F1598BAE3D1E8B0E5896EDCB2CC3570ABE26502FF609BDC30AE5D0C91E0284231C90BBB8B429695B90D6511DB48511965E15FDB000DEA8332DC8805BEF6BBE59596074C80BA45B4102AFB2D8886BDB6228D8ED3D8D5D194EC1ABCFBD22BE51B867BFD61CA3B6EC0D4FADAB5DEB472438C57375B73562F27AD25B9F53AD8EDE48A2409A65B83ED166F1CBFA0BA6FFCE1E42FCA31BC406EE08095B6D549D87EC812AC553C1A35BDA4422ACDAFE74427FC5918B5B61971DC1162E55166A8B6EFAB8CBB72BFFE3F97E9A4FC65785B60B5272FD1B8083B696627B402A72D987D721046C4869E7E16B334E25DBC609B74490B9B08E5BB36CAC4B3B4B77DE5B59C6545ADEDFB5E37B32523F7B99AB26E0CBF9B4EC9AF733906856AC2180B83F10A56B401B058E98F68B023C3D0E6C2600D0D8AB4414F637D80B6251B32342D5F0E481A9B1019D9632FF6C735894F13D45C79FDC4349BCDA6BAD9E8ACFDCB6343A867AAE9EE6979ADA319B77DD42B430BB44D89AA9D541D3E5CAFA2BBEFA9D76085B017863423B433A9097F458F7B596BF38B7654B46886BDA58AC98A6E58B46252B4F81E9335BBE7E75B5C078D7FA2A1EEF7FE5A2A88B2101BF9BFB1338629A8EA0D9840740152E5DFDCEED1F8F0C89ACAFD7B26649E9421EB35267BF5B101D53EDD391818FA7D698CA6F8131101968DEF22B2FABE89D5FF6BAE73CCF3DFF0D786C94AA7D3F69E96649A3F7F5632A7C361BAE724036263E72C641F033B2621CF526BD3B4E359808D9ADEB0B4F5253FE321ACA6EEEF99D4B133FBF54B2578E0DC08AC99C7CED8F963BF0C7CEE3CE5F9F3936A38307860A27F048205089D9D84617B934A60836B512A4C171ED0843053F3767FEF5354B42B2B407BE51C128C39FD4162DAD6E7A8AD7CA602B60ADC2EFB07CE94DA9FEC7D86465B664679FB9FBAE13CC60BCE83B363E0D23550DA364FDA04DF398879AD69D386E9D2D6E19265A741AABFCA30A9CDE630901ABFA662184BBAAC213443E510182154ED99F1455C06B3A551B9C5AEA3A04888F1752214D5F514970390329B1A7F262CC52D17D11CC219BF4955922A3419A239337EC7D019B1EDFC6C6266EA3CB9C93A947C0913504D8A26C00D3F4D290B2BBD2FDBBDA90B42A75A4135F45D2A4D3996EB0AE93AE63D810AF75515E21EA2842198BCE13E79827D74439EF71196245897A4BC1B64F745986E9F9C53B214249205462D8F8F18C361B47AFF0F01A77BF654200000, N'6.2.0-61023')
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905161424175_removeBasket', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400CD58DB6EE336107D2FD07F10F8D4025933979736907791B5E3C2E8E68255B27DA6A5B14D8422559232EC6FEB433FA9BFD09144DD6DC77682C5C22F163973E6CC903C1CE9BF7FFEF53FAD63E1AD401BAEE4905C0CCE8907325411978B2149EDFCC36FE4D3C79F7FF26FA378ED7D2BEDAE323BF494664896D626D7949A700931338398875A1935B78350C594458A5E9E9FFF4E2F2E282004412CCFF3BFA6D2F218F2077C1C291942625326EE5404C2B8719C097254EF9EC5601216C2908C8225D32FE62F9899A54A06636659E144BC1BC119120A40CC89C7A4549659A47BFD6C20B05AC94590E000134F9B04D06ECE840197C6756D7E6846E7975946B4762CA1C2D458151F097871E54A44BBEE27159A5425C422DE62B1ED26CB3A2FE4903C6A15A5A1255E37D6F548E8CCAE57E6A2C403E778E6B5A7CFAA9D811B28FBA1412A6CAA612821B59A8933EF319D091EFE099B27F502722853219A249126CEB5067008E325A0EDE62BCC1DF5E99878B4ED47BB8E955BC3A7C86A2AEDD525F1EE31389B09A8F640A30281551AFE00099A59881E99B5A07109A711E455EC45EFC47215CA1ECAA0B8F7F03411EF8EADBF805CD8E590E05FE24DF81AA272C41179961C0F1F3A599DC216A207057FD43C84D752DE8F3435372BC6738F12E8B35202983C95D4184CA87952ECE83717E615F61257317C795B099EB598680E32129B775ACDFDF1EE984CE72CCC4E8D7EE7603EAD25A02F0CA8BE9671DCF08E883BD4F991DF2211A8A64E258C8BD54EAB000DC0B6D71FF5B9265188F4A0D2A16D642B5AF56D408BEBA0BC36E88E7BC3BF634982756BDC236EC40BDC25F221385E56E3028386668BBA566CAB48A8236C019D590C8D4C275C1B9BDD5C3396ADDC288A7B66AD45D851E03254A7CE5D11ADCB5E3A64FF0BA79DB769B5361DB4BA96134C2F4651CC33858A547DBBF43CF3FB9C09A6B7E8F348893496BB347E9F774B719B30AD89A3F19C886E0174338723B6C4B4956873E268862D45DDC2B3357F04DB523C5B4CCBC1C3717AFAD9C4EB4D1E8EDBD6C926687BA68FE8D3CED6ED9E14DA3B2A9D4EA37BF4F6C956D7A48A5EC95747A67C271907F4C05D0D294C8887A55AF128D38F60632CC4F9811E047F8B91C062DBDA004BC5E7606CD18C11EC3F2F3BFDF38FD3CB526322715843FBDD1B4A9E15F5D596F1B48EA9D975C815D3214AF52F315BFFFA2E7D61CEFCED5DE18C1F0FB3BB23DC99E6095DDF2909EEE8F9DE446B5B5F7704E071BD5BBFBB38A839DBD79B15DA3224D14C21FD8266DDD39DD8B9F5A5CEA7CD8F023E6E0EBEA821B24F0412C26CAFD4A0A5CD54CE5559744CADC9A834E9AE09581661856EB4E5D9DAE07408C6E4BDF637265234B98D67104DE5436A93D4DE1803F14CB4DEFE7CBA3F7EDE9EB639FB0FF96E37EF9102D2E498023CC8CF291751C57BD2DFE7BB20B2CDE2640B59E1BB06C22D3615D2BD920702B9F28D21C1A383A2F704712210CC3CC880ADE0146EF896F105162CDC9437D66E90D717A25D767FCCD942B3D8388CDA3FFBD045B32F5D1FFF074546B5061B130000, N'6.2.0-61023')
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905161434064_BasketEntryDB', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400D559DB6EE336107D2FD07F10F4D402593397976D20EF227192C2E8E6D255B2FB4C4B63870845A92415D8DFD6877E527FA12389BA4BB66467B72DF21293C3C3B971668EFDF79F7F391FD701B75E412A168AA97D3239B62D105EE833B19ADAB15EBE7B6F7FFCF0E30FCEB51FACAD2FB9DC59228727859ADACF5A47E78428EF1902AA2601F364A8C2A59E786140A81F92D3E3E35FC8C9090184B011CBB29CCFB1D02C80F4037E9C85C28348C794DF863E7065D671C74D51AD3B1A808AA807537BE63E53F9A2BEC2423D87D1E48A6A9A1DB2AD0BCE282AE4025FDA161522D454A3BAE74F0A5C2D43B172235CA0FC711301CA2D295760CC382FC5875A747C9A5844CA833994172B1D0623014FCE8C8B48F3F85E8EB60B17A213AFD1D97A93589D3A726A5F52F5021A97E5C6B69AF79DCFB84C645BAECEDC3CA91C3EB2EA224745866022257F2810731D4B980A88B5A4FCC87A88179C79BFC1E6317C01311531E75565515DDCAB2DE0D2830C23907AF31996C6048CA99C5FD916D92D8A2B7EECE9B6B4439A5715A71BB764FEC024C267615BB774FD09C44A3FE383397D6F5B376C0D7EBE62B2EA49307C457848CB183FDEA19974C1A1D8275BEFADA89C5D3D17FAEC7434CCEF314D433F06C52165BA6C4D22A3E3F8043207FFC5E4D9271576C7A2E2015787127E0501926AF01FA8D620B10ECC7D30F11814FEE4C396DCC37FBF61EE3D48E6C161E9375717AF94A52772A0CB30E440C5BE4A5D81F2248BB2B278B06376682F308ADECB612E7892FC4632103EDFBC5134B7DF774B45BCA45EF26AE41B5FB6BD30600BD79461C21B45CCA34E9F7C4789C0C26AAA843277D5CDCA405DD0AD8EC5003B7DA949D6EE27B58E46B663995CEA82296A5A97E18589E57842B2F9249F6348CF20E3DCD228C21854061BB362B966AA79E78EEFF34186413CD5D1EE0B6D8B9BB026D1153476F16AD4F48649A593516A41932C98F9414BAC16D01E07E75775C5AC59954BDFE7A792FFB393BD335E2DCE0DC4D2A937686780953635190AEDEA734FEB743A6D524E65CF0C300B791C88EDD3473F4AA5A357817A67936D58655BAF4295AB6D2487345CD38C066985A3D11E9B311E9401C54B7B9BE0E7AF737CE07B4FF6B9B819A7BD829D55FC8E70671BA3F14C4BEE00343BC3116BADB966687563B486B5FEDCA1676D7F84B6792BAE699A2F0EC76975E3DA9B6E6E0EC7AD77DD2A687DE73B3FCC56E36A8A14B7170DACD1A81CD33406D0F26617C9446C0B5DF5CAFCA483B81BA521481FF4C4FD83CF383A5B9702E82AB604A5B3D1DE464A7CDAA0F4FF1D7A4D94F2F9708EFD3FE1B7E2954A0F8B6F9BE11E4A5F5912E803C9EB6E8CD1D4F5BB53C7D4869DE4703F6F57F9451EC99F02BAFEF94D18E03E11ECE07F0B361EA69FFBF59AB907BFDBC7C01E7677905A5D0C6E04E03896D69EFD87D2B0CD2E1296D5FFA9ED2F42342353B7C1E286F1B46D34ADEB9292DEED49E2DA3DCF21D52FAC1DCC44B62A2192AFAF0578496296A0B9CC5C2CC33CC2685A55A35CA49900A0A98FE1B8909A258980DB1E289552F82F94C728721D2CC09F8BFB5847B1BE500A8205AFCDFD0ED97E7FCA54EB3A3BF7E9D3526F6102AAC9D004B8179731E37EA1F74D47CDEE814832D3D448D4CAD549AD5C6D0AA4BB500C0432EEBB8208DF2956D84708228E60EA5EB8F415F6D10DBBE62758516F938F2EFD20BB035177BB73C5E84AD240198CF27CF2230C497E85F9F00F484344F3B7190000, N'6.2.0-61023')
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905171002032_BasketEntryDateTime', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400D559C96EE33618BE17E83B083AB5C08C99E5320DE419244E52189D2C1D25D3332DFD768850A44A5241FC6C3DF491FA0AFDB5EFB624A7D316B984E4CF8FFFBEC87FFDF1A7F3E935E0D60B28CDA498DBC7B323DB02E1499F89CDDC8ECCFAFD07FBD3C7EFBF73AEFCE0D5FA9AD39DC6747853E8B9FD644C784688F69E20A07A16304F492DD766E6C980505F9293A3A39FC8F1310184B011CBB29C2F91302C806481CB85141E8426A2FC46FAC075B68F276E826ADDD20074483D98DB0BF789AA67FD1BACF4930C6797D4D0F4926D9D7346912117F8DAB6A810D25083EC9E3D6A708D9262E386B841F9C33604A45B53AE2113E3AC241F2AD1D1492C11292FE6505EA48D0C46021E9F662A22CDEB93146D172A44255EA1B2CD36963A51E4DCBEA0FA190C6EABAD6D35DF3B5B7015D3B6549DAA7956B9FCCEAA93BC2B3C041D29FE4382889B48C15C406414E5EFACFB68C599F70B6C1FE43388B98838AF328BECE2596D03B7EE950C4199ED17586722A04DD5F2D2B6C87E52DCF123CFB4A91DD27CAAB8DD7825D5073A1186856DDDD0D7CF2036E60903E6E4836D5DB357F0F39DCCAB1E05C328C24B4645B8BC4531E98A43714E76BE5B61397D7A29CCE9C968985F239A98FE30943BE5837AC070CD6130E6205D572F3AA4F4B39DDE970937DEF3B28BFFA2D74DF1A1FD46AC68C03552C1CF2040A18EFD7B6A0C284C204B1F32430EF29B78B1C369F1DF7FD069EF15F3E0308F5BEAF317CA921B39D085941CA898CAD425684FB130CDA7072B660FF702ADE83D1FA68247C5AF1503E1F3ED1B5973F77B3754446BEAC551A3DEF8B1DD89016BBFA10C1D3E63240BEA24E43B520466E42C4BE8ECADBA5829A80BA655EA18608B507292F609B35A2924BBB1325FEA8229725A97E08588655F43D2C6266F80484F07E4DCD030441B543AA26CC772B376E8BD3BBE4108520CE2E98E3EA1E0B678097312DD40E3149F464EAF99D226EEC15634F682851FB4C86A06ED5170FE5497CD9A59B9D47D7E2BFE3FBDD9DB1CD6ECDC402C957A8D720698691391A1E0AEDE30B56E276D2AE554F5340F0BC9A340EC6E5BFA512AAD4015A8B7A9D98555F60355A872773852A527A84255B6DB580E69A8B96959D2326DA3D436FD6590371551FB368E9447FA7827EABDD9A7E4A6CD27394E5A3D3A5C273D188D9795F70EC0EC643862ADCCD704AD1E8CE6B056EB3BF8AC9D8FE0362FEB354EF3CDE138ADCA5ECB0FCDC3E1B8F50A5E05AD9F7CE3C06C15C12649F17A510C1B45CFC90AD0806F03CD8A9492D816AAEA85F9713572B7DA409004F4CCFD9D2F382ADB9404A82AB6066DD231C1C6B9FCA4F15DE1BF33E313AD7D3E7CD0FF9F0CD9E2852A0F936F7BCC3E748666B1A10F9CA0A760B4E6671F673B93AC4BA4B16D73C73CFDCDE7D944197B27D66966AB0E3DB94BFC10D0D71FDF642C9D62C68EA174C5C6C3F40FA4BD624E183AA708D833721EC456D758390270DCE8D81E4886CE86DB7D93615A4830745712C548D96D8C96C386C75DB363D723E5CC3971B26C174F87543FBF3BE8896C5342C41FE30578B16396A039CD52AC656E6114ADCA514ED274003014F31D3D5786C58E80C71E689D7C57F84A79842457C10AFCA5B88B4C189973AD2158F1DA30E290DDEF27E3739D67E72E092DFD1622209B2C4ED977E22262DC2FF8BE6E07551F44EC99598E44AE5C13E7CACDB640BA95622050A6BE4B08314E31C33E40107204D377C2A52F3085372CBF9F6143BD6DDE03F583EC37445DEDCE25A31B45039D6194F7E39F9448FC9BD2C7BF018E295E2E851A0000, N'6.2.0-61023')
--GO
--INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905171052013_BasketView_kerdojel', N'CSharksWebshop.Migrations.Configuration', 0x1F8B0800000000000400ED5A5B6FDB36147E1FB0FF20E8691B52CB495FBAC06E91E632186B2E8BD36E6F052DD10E118AD2482AB031EC97ED613F697F6187BA93946C4976DB1518F26289871FCF9DE71CE59FBFFE9EBC5987D479C65C90884DDDE3D1D87530F3A380B0D5D44DE4F2C52BF7CDEB6FBF995C06E1DAF950D0BD5474B09389A9FB28657CEA79C27FC42112A390F83C12D1528EFC28F450107927E3F18FDEF1B18701C2052CC799DC274C9210A70FF0781E311FC73241F43A0A3015F97B5899A7A8CE0D0AB188918FA7EEF9FC11F127F12B5E88C7281E5D2089B24DAE7346090286E6982E5D073116492481DDD3F702CF258FD86A1EC30B441F363106BA25A202E7629C56E45D251A9F2889BC6A6301E5274246614FC0E397B98A3C73FB2045BBA50A418997A06CB95152A78A9CBA6F9178C2125EF38DEB98E79D9E53AE682D55676A1ED5361F393AC951E921E048EA0F08122A138EA70C2792237AE4DC250B4AFC9FF1E6217AC26CCA124AEBCC02BBB0A6BD8057773C8A31979B7BBCCC45009BF2D985EB78BB49E14D90F8D2A69E78E651E56EE3944C1FE0441016AE738DD6EF305BC94708989357AE7345D63828DEE45EF59E118822D82479028F3720265A505CAE7B5BCFADB19C1D3D63F2E5496F985F12949A7E3F945B1E60FE00E15AC040CCE1ECB9BE71E2557ED6C1FB863ADE17F4B9211EB4DB843505CC65C4F14F98610E1A0EEE90949843FA98053837E37643EDF456F8D9C95B8D636ED03359A51C1A076616C99D1512F03DA62999782471968773A37D3429AF7814DE47B4C430083ECEA384FBCAE1A26D540F88AF94270D72C31CA5BF1FE61BFF77C4D6B3720DA9870378E3B0DC79C7898FF74B7C3371F68C48BAA3007A1B813B223694A90B2C7C4EE2EC5A3F74989ADC33B0A2FFB49F0ADE737AC5096601DD1CC89ADBCFBB462C59225F450D3FF0616D89E14C88C827A9DF6B69CDCC593ADF972C703A25B04C842A15821C9015480C79009899BAE3D1E8D8D2CA2EF422F1D5D0CB74A6C3FF602AA126AE9D1EA110978840D8E79AC8535B9AF81A12255C3879AE14B9C64D3114E81C4BABEE24182E81CA1E9A86F2BAD4524913563BCA4E80EA32B2104A5D1A1035DD998C58375C8D76EB556866FBAE8E558A535385550C77F5A31A58258179C3E8D2374456E93D55FFE6650D5CD1E8792D9DDEE41AC5310479ADF3CBDF38F3BCED7B31EFDF08851986E78B867EA8E4B63C092E3DB4C2C62A1C0D9C5E112EA4EA351748A599F320B4C8B4586971BDE2A8A670B06D577865B14BFDCE76B636C15A0819889552AF40CE10AEF254646C7952CBEEB41D4714F196B2F33CA249C8B6B767ED28B596A70ED4DABC6DC3AAFA9E3A54F5B63B52ADF7A943D55EDB5813CF50B36959CF32AD1169A6BFF4F0A6C3FAD16017EAEE3DA6C1FB59BA9FEF7D21CB6CC9F5434C53DC4EFD6DD3BAF3D318476B031A823A5BE88D9757F60D80F94A7744ADC2D704AD2FF4E6502BF31BF8D4D67B705B54F41AA7C5CB1E416316F55AF4988BDD71F5E2BD0EAAAF7CFEC0D44B97A6BC69D56FDD93A4B5B563D8A9EAAC71A0D252F2D95AEB14B33966E3B0D4ABB13094BBBC861CC85D6FB6A0E20A48DAACCD846A66CBD6AF93CC66156B7B8B55CC9A24A5AF9645AD51BC4EF242B2C3B70CB3B2CC485C07847F2681AA2AE71B2171983ADD68FE3B3DA7109AB22280C0224B2C64364F724FC6C727C67790FFCE37094F888076FF30F1957C1460CF88FB9020ECCF02FBCEFC8932F49E13FF2118D6BC3F4012CBF4B942EA3E5F699BFF7FF6B967AA8B9D93CDBE03B24667F82E44EBEF0FA4AEC6DBE3ABD557C368B8556983C7BD43BCBE61D8BB20FD61DA07BD3D7C63E7307788802DA3DCBDD86A1AD7EE0558BBB86B925A83C7190BF07AEAFE91EE3A7566BF7D2C371E3969FE3A75C6CE9FC322F03003E1FD47BFE514B2F7941760200960AE621451A86484E450CB585535040DF3498CA8CEB95DCA75492D4AA125A0B9728163F03CD593EAB275396A6B015B021B696E97FC3D07E1F60CB0EBA47BB36BCE9DD57C70CB2E223075E6ACC6A0BCD3287CCB24BCFD88DDE0A5C7B54FC99BE05BC7C85F6286DE302DDF3A2C3764D69AB84F3216B73B06F0E0DAFF4841FC08B2AA205417C4B0AFF96E493363CBA8882283A382C44CE3582228F2D0199744A57358F6B110E957B70F88264072192E703063B7898C130922E37041B549AA0AC56DE7A7B37F9DE7C96D7A418A4388006C1255A7DEB2B709A141C9F7957D35B641A818CF2B1D654BA92A9ED5A644BA895847A05C7D656A7AC0614C014CDCB2397AC643788332F31D5E217F53347EED20BB0DA1AB7D7241D08AA350E418D57E78041F0EC2F5EB7F018BEEB1462A280000, N'6.2.0-61023')
--GO
--INSERT [dbo].[BasketEntries] ([UserID], [ProductID], [Quantity], [OrderTime]) VALUES (N'udmk42qtuc11xgzkcd1nehpc', 1, 0, NULL)
--GO
--INSERT [dbo].[BasketEntries] ([UserID], [ProductID], [Quantity], [OrderTime]) VALUES (N'udmk42qtuc11xgzkcd1nehpc', 5, 0, NULL)
--GO
--INSERT [dbo].[BasketEntries] ([UserID], [ProductID], [Quantity], [OrderTime]) VALUES (N'udmk42qtuc11xgzkcd1nehpc', 7, 0, NULL)
--GO
--INSERT [dbo].[BasketEntries] ([UserID], [ProductID], [Quantity], [OrderTime]) VALUES (N'udmk42qtuc11xgzkcd1nehpc', 9, 0, NULL)
--GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (1, N'Test Próduct', 1000, 1, NULL, 4, N'test-product', N'CSharks Zrt.', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (2, N'Hungy hippos boardgame', 500, 1, N'asd', 5, N'hungy-hippos-boardgame', N'Iphone', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (3, N'Walkman', 2000, 1, N'asd', 6, N'walkman', N'Iphone', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (4, N'Commodore64', 10000, 1, N'asd1', 10, N'commodore64', N'Commodore', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (5, N'Moncsicsi', 1500, 1, N'asd', 15, N'moncsicsi', N'Moncsi kft.', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (6, N'Nintendo', 25000, 1, N'asd', 2, N'nintendo', N'Nintendo LTD.', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (7, N'Porcelain squirrel', 800, 1, N'asdq', 1, N'porcelain-squirrel', N'Mókuskft.', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (8, N'Búgócsiga', 4000, 1, N'asd', 3, N'bugocsiga', N'Búgócsiga Kft', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (9, N'Színes cukorka', 600, 1, N'asd1', 5, N'szines-cukorka', N'Kabos kft.', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [Basket_ID]) VALUES (10, N'Rubik''s cube', 3000, 1, N'des', 3, N'rubik''s-cube', N'Rubik''s manufacturer', NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_Basket_ID]    Script Date: 2019. 05. 17. 15:28:29 ******/
--CREATE NONCLUSTERED INDEX [IX_Basket_ID] ON [dbo].[Products]
--(
--	[Basket_ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--GO
--ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Baskets_Basket_ID] FOREIGN KEY([Basket_ID])
--REFERENCES [dbo].[Baskets] ([ID])
--GO
--ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Baskets_Basket_ID]
--GO
--USE [master]
--GO
--ALTER DATABASE [CSharksWebshop.DataModels.WebshopModel] SET  READ_WRITE 
--GO
