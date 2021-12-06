package yuhan.mvc.gimal;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yuhan.mvc.board.service.BoardListService;
import yuhan.mvc.board.service.BoardModifyService;
import yuhan.mvc.board.service.BoardWriteService;

@Controller
@RequestMapping("/Member/*")
public class MemberController {	
	
	@RequestMapping(value = "/joinform", method = RequestMethod.GET)
	public void getjoinform() throws Exception {
		
	}
	
	@RequestMapping("/CheckJoin")
	public String CheckJoin(HttpServletRequest request, Model model) {
		System.out.println("---CheckJoin()---");
		

		return "/Member/CheckJoin";
	}
	/*
	@RequestMapping("/LoginJoin")
	public String LoginJoin(HttpServletRequest request, Model model) {
		System.out.println("---LoginJoin()---");
		

		return "/Login/loginform";
	}
	*/
	@RequestMapping(value = "/LoginJoin", method = RequestMethod.GET)
	public void getLoginJoin() throws Exception {
		
	}
	
	@RequestMapping(value = "/MyPage", method = RequestMethod.GET)
	public void getMyPage() throws Exception {
		
	}
	
	
	@RequestMapping("/UpdateForm")
	public String UpdateForm(HttpServletRequest request, Model model) {
		System.out.println("---UpdateForm()---");
		

		return "/Member/UpdateForm";
	}
	
	@RequestMapping("/CheckUpdate")
	public String CheckUpdate(HttpServletRequest request, Model model) {
		System.out.println("---CheckUpdate()---");
		

		return "/Member/CheckUpdate";
	}
	
	@RequestMapping("/CheckDelete")
	public String CheckDelete(HttpServletRequest request, Model model) {
		System.out.println("---CheckDelete()---");
		

		return "/Member/CheckDelete";
	}
	
	
	@RequestMapping(value = "/DeleteForm", method = RequestMethod.GET)
	public void getDeleteForm() throws Exception {
		
	}
	
}
