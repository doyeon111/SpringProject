package yuhan.mvc.member.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import yuhan.mvc.member.dao.LoginDao;
import yuhan.mvc.member.dto.LoginDto;

public class LoginInsertService implements ILoginService {

	@Override
	public void execute(Model model) {
		Map<String, Object>map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		LoginDto dto = null;
		
		dto.setId(request.getParameter("id"));
		dto.setId(request.getParameter("password"));
		dto.setId(request.getParameter("name"));
		dto.setId(request.getParameter("email"));
		dto.setId(request.getParameter("tel1"));
		dto.setId(request.getParameter("tel2"));
		dto.setId(request.getParameter("tel3"));
		
		LoginDao dao = new LoginDao();
		boolean check = dao.insert(dto);

	}

}
