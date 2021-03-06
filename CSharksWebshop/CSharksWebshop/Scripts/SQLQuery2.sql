USE [CSharksWebshop.DataModels.WebshopModel]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (1, N'Test Próduct', 1000, 1, NULL, 4, N'test-product', N'CSharks Zrt.', N'~/Images/defaultImg.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (2, N'Hungy hippos boardgame', 500, 1, N'asd', 5, N'hungy-hippos-boardgame', N'Iphone', N'~/images/hungry.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (3, N'Walkman', 2000, 1, N'asd', 6, N'walkman', N'Iphone', N'~/Images/walkman.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (4, N'Commodore64', 10000, 1, N'asd1', 10, N'commodore64', N'Commodore', N'~/Images/Commodore64.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (5, N'Moncsicsi', 1500, 1, N'asd', 15, N'moncsicsi', N'Moncsi kft.', N'~/images/moncsi.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (6, N'Nintendo', 25000, 1, N'asd', 2, N'nintendo', N'Nintendo LTD.', N'~/images/nintendo.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (7, N'Porcelain squirrel', 800, 1, N'asdq', 1, N'porcelain-squirrel', N'Mókuskft.', N'~/Images/55105rr.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (8, N'Búgócsiga', 4000, 1, N'asd', 3, N'bugocsiga', N'Búgócsiga Kft', N'~/images/letöltés.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (9, N'Színes cukorka', 600, 1, N'asd1', 5, N'szines-cukorka', N'Kabos kft.', N'~/Images/cukor.jpg', 'Games & Toys')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (10, N'Rubik''s cube', 3000, 1, N'des', 3, N'rubik''s-cube', N'Rubik''s manufacturer', N'~/Images/rubik.jpg', 'Games & Toys')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
