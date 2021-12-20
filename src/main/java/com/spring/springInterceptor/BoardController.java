package com.spring.springInterceptor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
	@RequestMapping("/boardList")
	public String boardListGet() {
		
		return "board/boardList";
	}
}
