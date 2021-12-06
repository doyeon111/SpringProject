package yuhan.mvc.movie.dao;

import yuhan.mvc.movie.dto.MovieDto;

public interface IMovieDao {

	public MovieDto read(int mno) throws Exception;
	
}
