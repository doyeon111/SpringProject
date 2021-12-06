package yuhan.mvc.cook.service;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import yuhan.mvc.board.dao.BoardDao;
import yuhan.mvc.board.dto.BoardDto;
import yuhan.mvc.cook.dao.CookDao;
import yuhan.mvc.cook.dto.CookDto;
import yuhan.mvc.cook_step.dto.CookStepDto;


public class CookSearchService implements ICookService {

	@Override
	//public void execute(Model model) {
	public void execute(Model model) {
		Map<String,Object>map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String name = request.getParameter("ingredient");
		CookDao dao = new CookDao();
		ArrayList<CookDto>dtos = dao.CookSearchList(name);
		
		model.addAttribute("Cooklist",dtos);

	}

}
