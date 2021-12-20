package com.spring.springInterceptor.db.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.springInterceptor.db.service.UserService;
import com.spring.springInterceptor.db.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	@RequestMapping("/test")
	public String testGet() {
		return "db/user/userTest";
	}
	
	@Autowired
	UserService userService;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	@RequestMapping("/userList")
	public String userListGet(Model model) {
		List<UserVO> vos = userService.getUserList();
		model.addAttribute("vos", vos);
		return "db/user/userList";
	}
	
	@RequestMapping("/userInput")
	public String userInputGet() {
		return "db/user/userInput";
	}
	
	@RequestMapping("/userLogin")
	public String userLoginGet() {
		return "db/user/userLogin";
	}
	
	@RequestMapping(value="/userInput", method = RequestMethod.POST)
	public String userInputPost(UserVO vo) {
		vo.setPwd(bCryptPasswordEncoder.encode(vo.getPwd()));
		userService.setUserInput(vo);
		return "redirect:/msg/userInputSuccess";
	}
	
	@RequestMapping("/userDelete")
	public String userDeleteGet(int idx) {
		userService.setUserDelete(idx);
		return "redirect:/msg/userDeleteSuccess";
	}

	@RequestMapping("/userUpdate")
	public String userUpdateGet(Model model, int idx) {
		UserVO vo = userService.getUserUpdate(idx);
		model.addAttribute("vo", vo);
		return "db/user/userUpdate";
	}
	
	@RequestMapping("/userPwdCheck")
	public String userPwdCheckGet(Model model, int idx) {
		model.addAttribute("idx", idx);
		return "db/user/userPwdCheck";
	}

	@RequestMapping(value="/userPwdCheck", method = RequestMethod.POST)
	public String userPwdCheckPost(UserVO vo, HttpSession session) {
		session.setAttribute("sPwd", vo.getPwd());
		String pwd = userService.getUserVO(vo.getIdx()).getPwd();
		
		if (!bCryptPasswordEncoder.matches(vo.getPwd(), pwd)) {
			return "redirect:/msg/userPwdCheckFalse?idx=" + vo.getIdx();
			/* return "redirect:/user/userPwdCheck?idx=" + vo.getIdx(); */
		}
		
		return "redirect:/user/userUpdate?idx=" + vo.getIdx();
	}
	
	
  @RequestMapping(value="/userUpdate", method = RequestMethod.POST) 
	  public String userUpdatePost(UserVO vo) { 
	  	vo.setPwd(bCryptPasswordEncoder.encode(vo.getPwd()));
  		userService.setUserUpdate(vo); 
  		return"redirect:/msg/userUpdateSuccess"; 
	  }
	 
	
	@RequestMapping("/userSrch")
	public String userSrchGet(Model model, String name) {
		List<UserVO> vos = userService.getUserSrch(name);
		model.addAttribute("vos", vos);
		return "db/user/userList";
	}
}
