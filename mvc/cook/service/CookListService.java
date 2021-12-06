package yuhan.mvc.cook.service;

import java.util.ArrayList;


import org.springframework.ui.Model;

import yuhan.mvc.cook.dao.CookDao;
import yuhan.mvc.cook.dto.CookDto;

public class CookListService implements ICookService {

	
	@Override
	public void execute(Model model) {
		CookDao dao = new CookDao();
		ArrayList<CookDto>dtos = dao.CookList(1,10);
		
		model.addAttribute("CookList",dtos);
	}

	

}
