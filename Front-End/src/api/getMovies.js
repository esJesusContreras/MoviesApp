
import configData from "../config/config.json";

export const getMovies = async( value ) => {

    const url = `${configData.server_url}/api/movies/${value}`;

    const resp = await fetch(url);
    
    if ( !resp.ok ){
        console.error("MoviesApp API response not ok:", resp);
        throw resp;
    }

    const data = await resp.json();  

    return {
        data
    };

}