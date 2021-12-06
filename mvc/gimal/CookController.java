package yuhan.mvc.gimal;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yuhan.mvc.board.service.BoardContentService;
import yuhan.mvc.cook.service.CookImageTestListService;
import yuhan.mvc.cook.service.CookListService;
import yuhan.mvc.cook.service.CookSearchService;
import yuhan.mvc.cook.service.CookStepListService;
import yuhan.mvc.cook.service.CookViewService;
import yuhan.mvc.cook.service.ICookService;

@Controller
@RequestMapping("/Cook/*")
public class CookController {
	
	ICookService Service;

	@RequestMapping(value = "/Search", method = RequestMethod.GET)
	  public void getSearch() throws Exception {
	  
	  }
	@RequestMapping("/CookList")
	public String Cooklist(Model model) {
		System.out.println("---CookList()---");
		Service = new CookListService();
		Service.execute(model);
		return "Cook/CookList";
	}
	
	@RequestMapping("/Cook_View")
	public String CookView(HttpServletRequest request, Model model) {
		System.out.println("---Cook_View()---");
		
		model.addAttribute("request",request);
		
		Service = new CookViewService();
		Service.execute(model);
		
		return "Cook/Cook_View";
	}
	
	
	@RequestMapping("/CookStepList")
	public String CookStepList(HttpServletRequest request, Model model) {
		System.out.println("---CookStepList()---");
		model.addAttribute("request",request);
		Service = new CookStepListService();
		Service.execute(model);
		return "Cook/CookStepList";
	}
	
	@RequestMapping("/CookSearch")
	public String CookSearch(HttpServletRequest request, Model model) {

		System.out.println("---SearchList()---");
		model.addAttribute("request",request);
		Service = new CookSearchService();
		Service.execute(model);
		return "Cook/CookSearch";
	}

	@RequestMapping("/CookImageTestList")
	public String CookImageTestList(Model model) {
		System.out.println("---CookImageTestList()---");
		Service = new CookImageTestListService();
		Service.execute(model);
		return "Cook/CookImageTestList";
	}
	
	
}
