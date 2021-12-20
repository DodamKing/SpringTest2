package com.spring.springInterceptor.db.service;

import java.util.List;

import com.spring.springInterceptor.db.vo.UserVO;

public interface UserService {

	public List<UserVO> getUserList();

	public void setUserInput(UserVO vo);

	public void setUserDelete(int idx);

	public UserVO getUserUpdate(int idx);

	public void setUserUpdate(UserVO vo);

	public List<UserVO> getUserSrch(String name);

	public UserVO getUserVO(int idx);
	
}
