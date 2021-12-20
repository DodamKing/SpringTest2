package com.spring.springInterceptor.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.springInterceptor.db.dao.UserDAO;
import com.spring.springInterceptor.db.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;

	@Override
	public List<UserVO> getUserList() {
		
		return userDAO.getUserList();
	}

	@Override
	public void setUserInput(UserVO vo) {
		userDAO.setUserInput(vo);
	}

	@Override
	public void setUserDelete(int idx) {
		userDAO.setUserDelete(idx);
	}

	@Override
	public UserVO getUserUpdate(int idx) {
		return userDAO.getUserUpdate(idx);
	}

	@Override
	public void setUserUpdate(UserVO vo) {
		userDAO.setUserUpdate(vo);
	}

	@Override
	public List<UserVO> getUserSrch(String name) {
		return userDAO.getUserSrch(name);
	}

	@Override
	public UserVO getUserVO(int idx) {
		return userDAO.getUserVO(idx);
	}
}
