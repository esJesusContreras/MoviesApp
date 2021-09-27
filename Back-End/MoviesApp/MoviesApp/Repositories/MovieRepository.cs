
using Microsoft.EntityFrameworkCore;
using MoviesApp.ViewModels;
using System.Collections.Generic;
using System.Linq;

namespace MoviesApp.Repositories
{
	public class MovieRepository : IMovieRepository
	{

		private MoviesAppDBContext _dbContext;


		public MovieRepository(MoviesAppDBContext dBContext)
		{
			_dbContext = dBContext;
		}

		public List<MovieViewModel> GetMovies(string value)
		{

			List<MovieViewModel> movies = _dbContext.MovieViewModel.FromSqlRaw($"exec [Movie_GetByFilter] @value='{value}' ").ToList();

			return movies;
		}

	}
}
