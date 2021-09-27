
import React, { useState, useEffect } from 'react'
import { getMovies } from './api/getMovies'
import { MovieCard } from './MovieCard';
import { useForm } from './hooks/useForm'

const App = () => {

  const [values, handleInputChange] = useForm({});

  const {search = ''} = values;

  const [movies, setMovies] = useState();

  useEffect(() => {

    getMovies(search)
      .then( response => {
        setMovies(response)
      })
      .catch( error => {
          console.error("MoviesApp API error fetching data:", error);
      })

  }, [search])


  return (
    <div className="container mt-2">
      <h1>Movies App</h1>      
      <hr/>
      <p>
        <input 
          type="text" 
          name="search"
          placeholder="Search here by movie name, director (minutes), duration, year or cast"
          className="form-control"
          onChange={handleInputChange}
        />
      </p>

      <div className="card-columns animate__animated animate__fadeIn">
      {
        movies && movies.data.map( movie => (
          <MovieCard 
              key={movie.movieID}
              {...movie}
          />
        ))
      }
      </div>
    </div>
  )
}

export default App
