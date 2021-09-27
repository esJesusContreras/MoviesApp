
using Microsoft.AspNetCore.Mvc;
using MoviesApp.Repositories;
using MoviesApp.ViewModels;
using System.Collections.Generic;

namespace MoviesApp.Controllers
{
	[Route("api/[controller]/")]
	[ApiController]
	public class MoviesController : ControllerBase
	{

		private IMovieRepository _movieRepository;

		public MoviesController(IMovieRepository movieRepository)
		{
			_movieRepository = movieRepository;
		}

		// GET: api/<MoviesController>
		[HttpGet("{value?}")]
		public List<MovieViewModel> Get(string value)
		{

			return _movieRepository.GetMovies(value);

		}
		
	}
}
