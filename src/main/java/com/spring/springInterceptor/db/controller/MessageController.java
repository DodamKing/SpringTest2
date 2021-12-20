package com.spring.springInterceptor.db.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController {
	@RequestMapping("/msg/{msgFlag}")
	public String msgGet(Model model, String idx, @PathVariable String msgFlag) {
		if (msgFlag.equals("userInputSuccess")) {
			model.addAttribute("msg", "등록 되었습니다.");
			model.addAttribute("url", "user/userList");
		}

		else if (msgFlag.equals("userUpdateSuccess")) {
			model.addAttribute("msg", "수정 되었습니다.");
			model.addAttribute("url", "user/userUpdate?idx=" + idx);
		}

		else if (msgFlag.equals("userDeleteSuccess")) {
			model.addAttribute("msg", "삭제 되었습니다.");
			model.addAttribute("url", "user/userList");
		}
		
		else if (msgFlag.equals("userPwdCheckFalse")) {
			model.addAttribute("msg", "비밀번호가 틀립니다.");
			model.addAttribute("url", "user/userPwdCheck?idx=" + idx); 
		}
		
		else if (msgFlag.equals("validatorMidFalse")) {
			model.addAttribute("msg", "아이디는 4 ~ 20 여야 합니다.");
			model.addAttribute("url", "user/validatorForm"); 
		}
		
		else if (msgFlag.equals("validatorPwdFalse")) {
			model.addAttribute("msg", "비밀번호는 4 ~ 20 여야 합니다.");
			model.addAttribute("url", "user/validatorForm"); 
		}
		
		else if (msgFlag.equals("validatorAgeFalse")) {
			model.addAttribute("msg", "20세 이상만 가능합니다.");
			model.addAttribute("url", "user/validatorForm"); 
		}
		
		

		else {
			model.addAttribute("msg", "오류 입니다.");
			model.addAttribute("url", "user/userList");
		}
		
		return "include/message";
	}
}
