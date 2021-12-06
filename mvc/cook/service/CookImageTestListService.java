package yuhan.mvc.cook.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import yuhan.mvc.cook.dao.CookDao;
import yuhan.mvc.cook_image_test.dto.CookImageTestDto;

public class CookImageTestListService implements ICookService {

	@Override
	public void execute(Model model) {
		CookDao dao = new CookDao();
		ArrayList<CookImageTestDto>dtos = dao.CookImageTestList();
		
		model.addAttribute("CookImageTestList",dtos);
	}

}
