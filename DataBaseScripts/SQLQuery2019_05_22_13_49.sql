USE [CSharksWebshop.DataModels.WebshopModel]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_ID]) VALUES (1, N'Test Próduct', 1000, 1, NULL, 4, N'test-product', N'CSharks Zrt.', N'~/Images/defaultImg.jpg', NULL)
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (2, N'Hungry hippos boardgame', 500, 1, N'boardgame', 5, N'hungy-hippos-boardgame', N'Iphone', N'~/images/hungry.jpg')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (3, N'Walkman', 2000, 1, N'Electronic device', 6, N'walkman', N'Iphone', N'~/Images/walkman.jpg')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (4, N'Commodore64', 10000, 1, N'Computer', 10, N'commodore64', N'Commodore', N'~/Images/Commodore64.jpg')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (5, N'Moncsicsi', 1500, 1, N'Toy', 15, N'moncsicsi', N'Moncsi kft.', N'~/images/moncsi.jpg')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (6, N'Nintendo', 25000, 1, N'VideoGame', 2, N'nintendo', N'Nintendo LTD.', N'~/images/nintendo.jpg')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (7, N'Porcelain squirrel', 800, 1, N'decoration', 1, N'porcelain-squirrel', N'Mókuskft.', N'~/Images/55105rr.jpg')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (8, N'Búgócsiga', 4000, 1, N'Spinningsnail', 3, N'bugocsiga', N'Búgócsiga Kft', N'~/images/letöltés.jpg')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (9, N'Színes cukorka', 600, 1, N'ColouredSweetie', 5, N'szines-cukorka', N'Kabos kft.', N'~/Images/cukor.jpg')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL]) VALUES (10, N'Rubik''s cube', 3000, 1, N'LogicGame', 3, N'rubik''s-cube', N'Rubik''s manufacturer', N'~/Images/rubik.jpg')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
