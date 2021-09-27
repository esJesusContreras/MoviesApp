
using MoviesApp.ViewModels;
using System.Collections.Generic;

namespace MoviesApp.Repositories
{
	public interface IMovieRepository
	{
		List<MovieViewModel> GetMovies(string value);
	}
}