USE [CSharksWebshop.DataModels.WebshopModel]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (2, N'Hungry hippos boardgame', 500, 1, N'It is a race, it is a chase, hurry up and feed their face!
Who will win? No one knows! Feed the hungry hip-ip-pos!', 5, N'hungry-hippos-boardgame', N'Hasbro', N'~/images/hungry.jpg', 'Games')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (3, N'Walkman', 2000, 1, N' a portable cassette player that changed listening habits by allowing people to listen to music on the move', 6, N'walkman', N'Sony', N'~/Images/walkman.jpg', 'Tech')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (4, N'Commodore64', 10000, 1, N'The Commodore 64, also known as the C64 or the CBM 64, is an 8-bit home computer', 10, N'commodore64', N'CBM', N'~/Images/Commodore64.jpg', 'Tech')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL],  [Category_Name]) VALUES (5, N'Moncsicsi', 1500, 1, N'Japanese stuffed animal monkeys from the Sekiguchi Corporation', 15, N'moncsicsi', N'Mattel', N'~/images/moncsi.jpg', 'Games')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
