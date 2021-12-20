package com.spring.springInterceptor;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member")
public class MemberController {
	@RequestMapping("/mInput")
	public String mInputGet() {
		
		return "member/mInput";
	}
	
	@RequestMapping("/mLogin")
	public String mLoginGet(Model model, String mid, String pwd) {
		return "member/mLogin";
	}
	
	@RequestMapping("/mLogout")
	public String mLogoutGet(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="/mLogin", method = RequestMethod.POST)
	public String mLoginPost(Model model, String mid, String pwd, HttpSession session) {
		model.addAttribute("mid", mid);
		model.addAttribute("pwd", pwd);
		if (pwd.equals("1234")) {
			session.setAttribute("sMid", mid);
			if (mid.substring(0, 1).equals("a")) {
				session.setAttribute("sLv", 1);
			}
			else if (mid.substring(0, 1).equals("b")) {
				session.setAttribute("sLv", 2);
			}
			else if (mid.substring(0, 1).equals("c")) {
				session.setAttribute("sLv", 3);
			}
			else if (mid.substring(0, 1).equals("d")) {
				session.setAttribute("sLv", 4);
			}
			return "redirect:/";
		}
		return "member/mLogin";
	}
}
