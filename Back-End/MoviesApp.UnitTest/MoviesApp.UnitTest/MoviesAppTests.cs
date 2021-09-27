
using NUnit.Framework;
using MoviesApp.Repositories;

namespace MoviesApp.UnitTest
{
	public class MoviesAppTests
	{
		private string _connectionString;

		MoviesAppDBContext _dbContext;

		[SetUp]
		public void Setup()
		{
			_connectionString = "Server=.\\SQLEXPRESS; Database=MovieAppDatabase; User id=sa; Password=Queretaro2019;";

			_dbContext = new MoviesAppDBContext(_connectionString);
		}

		[Test]
		[TestCase("a")]
		[TestCase("star")]
		[TestCase("197")]
		[TestCase("Adventure")]
		[TestCase("Harrison Ford")]
		public void GetMovies_GetOneOrMoreRecords_ReturnsTrue(string value)
		{

			var controller = new MovieRepository(_dbContext);

			var movies = controller.GetMovies(value);

			Assert.IsTrue(movies.Count > 0);
		}

		[Test]
		[TestCase("","6")]
		public void GetMovies_GetAllRecords_ReturnsTrue(string value, int knownRecordsTotal)
		{

			var controller = new MovieRepository(_dbContext);

			var movies = controller.GetMovies(value);

			Assert.AreEqual(movies.Count, knownRecordsTotal);
		}

		[Test]
		[TestCase("012AB8CD1")]
		public void GetMovies_GetNoRecords_ReturnsTrue(string value)
		{

			var controller = new MovieRepository(_dbContext);

			var movies = controller.GetMovies(value);

			Assert.IsTrue(movies.Count == 0);
		}

		[Test]
		[TestCase("star")]
		[TestCase("STAR")]
		public void GetMovies_NoCaseSensitive_ReturnsTrue(string value)
		{

			var controller = new MovieRepository(_dbContext);

			var movies = controller.GetMovies(value);

			Assert.IsTrue(movies.Count > 0);
		}
	}
}