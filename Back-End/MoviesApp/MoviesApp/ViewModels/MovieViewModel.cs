
using System.ComponentModel.DataAnnotations;

namespace MoviesApp.ViewModels
{
	public class MovieViewModel
	{
		[Key]
		public int MovieID { get; set; }
		public string MovieName { get; set; }
		public string MovieYear { get; set; }
		public string MovieDirector { get; set; }
		public string MovieDuration { get; set; }
		public string ActorNames { get; set; }
		public string GenreNames { get; set; }

	}
}
