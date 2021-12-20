package com.spring.springInterceptor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pds")
public class PdsController {
	@RequestMapping("/pdsList")
	public String pdsListGet() {
		
		return "pds/pdsList";
	}
}
