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

import yuhan.mvc.board.service.BoardWriteService;
import yuhan.mvc.member.service.ILoginService;
import yuhan.mvc.member.service.LoginInsertService;

@Controller
@RequestMapping("/Login/*")
public class LoginController {	
	
	  @RequestMapping(value = "/loginform", method = RequestMethod.GET)
	  public void getloginform() throws Exception {
	  
	  }
	  
	  @RequestMapping(value = "/logout", method = RequestMethod.GET) 
	  public void getlogout() throws Exception {
	  
	  }
	  
	  @RequestMapping(value = "/IDFindForm", method = RequestMethod.GET) 
	  public void getIDFindForm() throws Exception {
	  
	  }
	  
	  @RequestMapping("/CheckLogin")
		public String CheckLogin(HttpServletRequest request, Model model) {
			System.out.println("---CheckLogin()---");
			

			return "/Login/CheckLogin";
		}
	  
	  @RequestMapping("/LoginResult")
		public String LoginResult(HttpServletRequest request, Model model) {
			System.out.println("---LoginResult()---");
			

			return "/Login/LoginResult";
		}
	  
	  @RequestMapping("/ResultId")
		public String ResultId(HttpServletRequest request, Model model) {
			System.out.println("---ResultId()---");
			

			return "/Login/ResultId";
		}
	  
	  @RequestMapping("/CheckId")
		public String CheckId(HttpServletRequest request, Model model) {
			System.out.println("---CheckId()---");
			

			return "/Login/CheckId";
		}
	  
	 
}
