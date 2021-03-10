package com.project.portfolio.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.login.DTO.User;
import com.project.portfolio.DAO.MyPageDAO;

@Service
public class MyPageServiceImp implements MyPageService {
	
	@Autowired
	MyPageDAO mypageDAO;
	
	@Override
	public User getUserInfo(String email) throws Exception{
		return mypageDAO.getUserInfo(email);
	}

}
