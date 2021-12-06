package yuhan.mvc.movie.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yuhan.mvc.movie.dao.MovieDao;
import yuhan.mvc.movie.dto.MovieDto;

@Service
public class MovieService implements IMovieService {

	@Inject
	private MovieDao dao;
	
	@Override
	public MovieDto read(int m_no) throws Exception{
		return dao.read(m_no);
	}
	
}
