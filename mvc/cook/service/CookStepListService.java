package yuhan.mvc.cook.service;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import yuhan.mvc.cook.dao.CookDao;
import yuhan.mvc.cook_step.dto.CookStepDto;


public class CookStepListService implements ICookService {

	@Override
	public void execute(Model model) {
		Map<String,Object>map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String cook_no = request.getParameter("cook_no");
		
		CookDao dao = new CookDao();
		
		ArrayList<CookStepDto>dtos = dao.CookStepList(cook_no);
		
		model.addAttribute("cook_description",dtos);

	}

}
