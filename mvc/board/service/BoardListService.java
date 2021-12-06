package yuhan.mvc.board.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import yuhan.mvc.board.dao.BoardDao;
import yuhan.mvc.board.dto.BoardDto;

public class BoardListService implements IBoardService {

	@Override
	public void execute(Model model) {
		BoardDao dao = new BoardDao();
		ArrayList<BoardDto>dtos = dao.list(1,5);
		
		model.addAttribute("list",dtos);
	}
	
}
