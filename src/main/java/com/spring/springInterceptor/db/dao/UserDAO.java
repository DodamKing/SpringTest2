package com.spring.springInterceptor.db.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.springInterceptor.db.vo.UserVO;

public interface UserDAO {

	public List<UserVO> getUserList();

	public void setUserInput(@Param("vo") UserVO vo);

	public void setUserDelete(int idx);

	public UserVO getUserUpdate(int idx);

	public void setUserUpdate(@Param("vo") UserVO vo);

	public List<UserVO> getUserSrch(String name);

	public UserVO getUserVO(int idx);
	
}
