package yuhan.mvc.movie.service;

import yuhan.mvc.movie.dto.MovieDto;

public interface IMovieService {

	public MovieDto read(int m_no) throws Exception;
	
}
