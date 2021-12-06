package yuhan.mvc.gimal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yuhan.mvc.board.service.BoardContentService;
import yuhan.mvc.board.service.BoardDeleteService;
import yuhan.mvc.board.service.BoardListService;
import yuhan.mvc.board.service.BoardModifyService;
import yuhan.mvc.board.service.BoardWriteService;
import yuhan.mvc.board.service.IBoardService;

@Controller
@RequestMapping("/Board/*")
public class BoardController {

	IBoardService Service; // 서비스 선언

	//리스트 불러오기
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("---list()---");
		Service = new BoardListService();
		Service.execute(model);
		return "Board/list";
	//IBoardService service = new BoardListService();
	
	//return "list";
	}
	
	@RequestMapping("/write_view")
	public String write_view(Model model) {
		System.out.println("------writr_view()-----");
		
		return "Board/write_view";
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request, Model model) {
		System.out.println("---write()---");
		
		model.addAttribute("request",request);
		
		Service = new BoardWriteService();
		Service.execute(model);
		
		return "redirect:list";
	}
	
	@RequestMapping("/content_view")
	public String content_view(HttpServletRequest request, Model model) {
		System.out.println("---content_view()---");
		
		model.addAttribute("request",request);
		
		Service = new BoardContentService();
		Service.execute(model);
		
		return "Board/content_view";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		System.out.println("---delete()---");
		
		model.addAttribute("request",request);
		
		Service = new BoardDeleteService();
		Service.execute(model);
		
		return "redirect:list";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/modify")
	
	public String modify(HttpServletRequest request, Model model) {
		
		model.addAttribute("request",request);
		Service = new BoardModifyService();
		Service .execute(model);
		
		return "redirect:list";
	}
}