import React from 'react'

const movieImages = require.context('../src/assets/images', true);


export const MovieCard = ({
    movieID,
    movieName,
    movieYear,
    movieDirector,
    movieDuration,
    actorNames,
    genreNames,
}) => {

    return (
        <div className="card ms-3" style={{maxWidth:540}}>
            <div className="row no-gutters">
                <div className="col-md-4">
                    <img 
                        src = { movieImages(`./${movieID}.jpg`).default }
                        className="card-img" 
                        alt={movieName} 
                    />
                </div>
                <div className="col-md-8">
                    <div className="card-body">
                        <h5 className="card-title">{movieName}</h5>
                        <p className="card-text">{movieDirector}</p>
                        <p className="card-text"><small className="card-muted">{movieYear}</small></p>
                        <p className="card-text"><small className="card-muted">{actorNames}</small></p>
                        <p className="card-text"><small className="card-muted">{genreNames}</small></p>
                    </div>
                </div>
            </div>
        </div>
    )
}
