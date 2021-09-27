
using Microsoft.EntityFrameworkCore;
using MoviesApp.ViewModels;
using System;

public class MoviesAppDBContext : DbContext
{

	public MoviesAppDBContext(DbContextOptions<MoviesAppDBContext> options) : base(options)
	{
	}

	public MoviesAppDBContext(string connectionString) : base(GetOptions(connectionString))
	{
	}

	private static DbContextOptions GetOptions(string connectionString)
	{
		return SqlServerDbContextOptionsExtensions.UseSqlServer(new DbContextOptionsBuilder(), connectionString).Options;
	}

	protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
	{
		optionsBuilder.EnableSensitiveDataLogging();
	}

	public DbSet<MovieViewModel> MovieViewModel { get; set; }
}

