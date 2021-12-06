package yuhan.mvc.cook.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import yuhan.mvc.cook.dao.CookDao;
import yuhan.mvc.cook.dto.CookDto;
import yuhan.mvc.cook_step.dto.CookStepDto;


public class CookViewService implements ICookService {

	@Override
	public void execute(Model model) {
		Map<String,Object>map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String cook_no = request.getParameter("cook_no");
		
		CookDao dao = new CookDao();
		
		//CookStepDto dto = dao.CookView(cook_no);
		
		//model.addAttribute("Cook_View",dto);

	}

}
