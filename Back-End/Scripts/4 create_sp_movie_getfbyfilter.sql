USE [MovieAppDatabase]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Movie_GetByFilter]
	@value NVARCHAR(50) = NULL
AS
BEGIN

	SET NOCOUNT ON;

	CREATE TABLE #Movies
	(
		MovieID INTEGER,
		MovieName NVARCHAR(100),
		MovieYear NVARCHAR(4),
		MovieDirector NVARCHAR(100),
		MovieDuration NVARCHAR(3),
		ActorNames NVARCHAR(MAX),
		GenreNames  NVARCHAR(MAX)
	);

	INSERT #Movies (MovieID, MovieName, MovieYear, MovieDirector, MovieDuration, GenreNames, ActorNames)
	SELECT Movie.ID, Movie.Name, Movie.Year, Movie.Director, Movie.Duration,  
		STUFF(
		  ( 
			  SELECT N', ' + Genre.Name 
			  FROM Genre, GenreMovie
			  WHERE Genre.ID = GenreMovie.GenreID
			  AND GenreMovie.MovieID = Movie.ID
			  FOR XML PATH(''),TYPE 
		  )
		  .value('text()[1]','NVARCHAR(max)') , 1 , 2 , N'' 
		  ) AS Genres,
		STUFF(
		  ( 
			  SELECT N', ' + Actor.Name 
			  FROM Actor, ActorMovie
			  WHERE Actor.ID = ActorMovie.ActorID
			  AND ActorMovie.MovieID = Movie.ID
			  FOR XML PATH(''),TYPE 
		  )
		  .value('text()[1]','NVARCHAR(max)') , 1 , 2 , N'' 
		  ) AS Actors
	FROM Movie;

	if @value IS NOT NULL
	BEGIN

		SELECT * FROM #Movies
		WHERE UPPER(MovieName) LIKE '%' + @value + '%'
		OR MovieYear LIKE '%' + @value + '%'
		OR UPPER(MovieDirector) LIKE '%' + @value + '%'
		OR MovieDuration LIKE '%' + @value + '%'
		OR UPPER(ActorNames) LIKE '%' + @value + '%'
		OR UPPER(GenreNames) LIKE '%' + @value + '%'
		ORDER BY MovieName

	END
	ELSE
	BEGIN

		SELECT * FROM #Movies
		ORDER BY MovieName

	END

END