USE [MovieAppDatabase]
GO

SET IDENTITY_INSERT [dbo].[Actor] ON 
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (1, N'Mark Hamill')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (2, N'Harrison Ford')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (3, N'Carrie Fisher')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (4, N'Roy Scheider')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (5, N'Richard Dreyfuss')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (6, N'Robert Shaw')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (7, N'Sigourney Weaver')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (8, N'Tom Skerrit')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (9, N'John Hurt')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (10, N'Clint Eastwood')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (11, N'Eli Wallach')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (12, N'Lee Van Cleef')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (13, N'Harvey Keitel')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (14, N'Tim Roth')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (15, N'Michael Madson')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (16, N'Chris Penn')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (17, N'Steve Buscemi')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (18, N'Jason Flemyng')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (19, N'Dexter Fletcher ')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (20, N'Nich Moran')
GO
INSERT [dbo].[Actor] ([ID], [Name]) VALUES (21, N'Jason Statham')
GO
SET IDENTITY_INSERT [dbo].[Actor] OFF
GO

SET IDENTITY_INSERT [dbo].[Genre] ON 
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (1, N'None')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (2, N'Action')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (3, N'Adventure')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (4, N'Animation')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (5, N'Comedy')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (6, N'Documentary')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (7, N'Drama')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (8, N'Family')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (9, N'Fantasy')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (10, N'History')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (11, N'Horror')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (12, N'Music')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (13, N'Mystery')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (14, N'Romance')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (15, N'Science Fiction')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (16, N'Thriller')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (17, N'TV Movie')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (18, N'War')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (19, N'Western')
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (21, N'Crime')
GO
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO

SET IDENTITY_INSERT [dbo].[Movie] ON 
GO
INSERT [dbo].[Movie] ([ID], [Name], [Year], [Director], [Duration]) VALUES (1, N'Star Wars', 1977, N'George Lucas', 121)
GO
INSERT [dbo].[Movie] ([ID], [Name], [Year], [Director], [Duration]) VALUES (2, N'Jaws', 1975, N'Steven Spielberg', 124)
GO
INSERT [dbo].[Movie] ([ID], [Name], [Year], [Director], [Duration]) VALUES (3, N'Alien', 1979, N'Ridley Scott', 117)
GO
INSERT [dbo].[Movie] ([ID], [Name], [Year], [Director], [Duration]) VALUES (4, N'The Good, The Bad and The Ugly', 1966, N'Sergio Leone', 161)
GO
INSERT [dbo].[Movie] ([ID], [Name], [Year], [Director], [Duration]) VALUES (5, N'Reservoir Dogs', 1992, N'Quentin Tarantino', 99)
GO
INSERT [dbo].[Movie] ([ID], [Name], [Year], [Director], [Duration]) VALUES (6, N'Lock, Stock and Two Smoking Barrels', 1998, N'Guy Ritchie', 105)
GO
SET IDENTITY_INSERT [dbo].[Movie] OFF
GO

INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (1, 1)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (1, 2)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (1, 3)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (2, 4)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (2, 5)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (2, 6)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (3, 7)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (3, 8)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (3, 9)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (4, 10)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (4, 11)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (4, 12)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (5, 13)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (5, 14)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (5, 15)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (5, 16)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (5, 17)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (6, 18)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (6, 19)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (6, 20)
GO
INSERT [dbo].[ActorMovie] ([MovieID], [ActorID]) VALUES (6, 21)
GO


INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (1, 2)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (1, 3)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (1, 15)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (2, 3)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (2, 11)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (2, 16)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (3, 11)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (3, 15)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (4, 19)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (5, 16)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (5, 21)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (6, 5)
GO
INSERT [dbo].[GenreMovie] ([MovieID], [GenreID]) VALUES (6, 21)
GO


