USE [CSharksWebshop.DataModels.WebshopModel]
GO
INSERT [dbo].[CategoryNames] ([Category_Name]) VALUES (N'Food')
GO
INSERT [dbo].[CategoryNames] ([Category_Name]) VALUES (N'Games')
GO
INSERT [dbo].[CategoryNames] ([Category_Name]) VALUES (N'Tech')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (2, N'Hungry hippos', 40, 1, N'It is a race, it is a chase, hurry up and feed their face!Who will win? No one knows! Feed the hungry hip-ip-pos!', 5, N'hungry-hippos', N'Hasbro', N'~/images/hungry.jpg', N'Games')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (3, N'Walkman', 32, 1, N' A portable cassette player that changed listening habits by allowing people to listen to music on the move', 6, N'walkman', N'Sony', N'~/Images/walkman.jpg', N'Tech')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (4, N'Commodore64', 200, 1, N'The Commodore 64, also known as the C64 or the CBM 64, is an 8-bit home computer', 10, N'commodore64', N'CBM', N'~/Images/Commodore64.jpg', N'Tech')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (5, N'Moncsicsi', 6, 1, N'Japanese stuffed animal monkeys from the Sekiguchi Corporation', 15, N'moncsicsi', N'Mattel', N'~/images/moncsi.jpg', N'Games')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (11, N'Bambi', 3, 1, N'Hungary''s famous national soft drink.', 5, N'bambi', N'Bambi Ltd.', N'~/images/bambi.jpg', N'Food')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (12, N'Rubik''s cube', 10, 1, N'Rubik''s Cube is a 3-D combination puzzle ', 4, N'rubik''s-cube', N'Rubik''s Brand Ltd', N'~/Images/rubik.jpg', N'Games')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (13, N'Turbo chewing gum', 1, 1, N'Turbo''s inserts, which featured the images of various vehicles, were a collectable fad from late 1980s to 1990s.', 5, N'turbo-chewing-gum', N'Turbo Ltd.', N'~/Images/turborago.jpeg', N'Food')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (14, N'Tamagochi', 20, 1, N'The Tamagotchi is a handled digital pet from Japan', 12, N'tamagochi', N'Tamagochi Ltd.', N'~/images/Tamagochi.jpg', N'Games')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (15, N'Tetris', 25, 1, N'Tetris is a  tile-matching puzzle video game', 3, N'tetris', N' Spectrum HoloByte', N'~/Images/Retro-Tetris.jpg', N'Games')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (16, N'Winter Ice cream', 3, 1, N'consists of cocoa-flavoured mousse topped with a thin layer of chocolate', 4, N'winter-ice-cream', N'Winter Ice cream Ltd.', N'~/images/telifagyi.jpg', N'Food')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (17, N'Peg-top', 15, 1, N'A child''s spinning top', 6, N'peg-top', N'Hasbro Ltd', N'~/images/letöltés.jpg', N'Games')
GO
INSERT [dbo].[Products] ([ID], [ProductName], [ProductPrice], [IsAvailable], [ProductDescription], [InStock], [UrlFriendlyName], [Manufacturer], [ProductPictureURL], [Category_Name]) VALUES (18, N'Jumping Frog', 3, 1, N'Magis Frog for children ', 6, N'jumping-frog', N'Hasbro Ltd', N'~/Images/ugralo-beka-r-02579_d53e9e3482cc82d4eb4b89d95c11481a.jpg', N'Games')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
