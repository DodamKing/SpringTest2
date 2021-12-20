package com.spring.springInterceptor.db.vo;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;

@NonNull @Getter @Setter @ToString 
public class ValidatorVO {
//	@NotEmpty(message = "아이디를 입력하세요.")  
	@Size(min = 4, max = 20, message = "아이디는 4 ~ 20 여야 합니다.")
	private String mid;
	
//	@NotEmpty(message = "비밀번호를 입력하세요.")  
	@Size(min = 4, max = 20, message = "비밀번호는 4 ~ 20 여야 합니다.")
	private String pwd;
	
	@Range(min = 20, max = 99, message = "20세 이상만 가능합니다.")  
	private int age;
	
	

}
