package com.project.portfolio.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.login.DTO.User;
import com.project.portfolio.DAO.AdminDAO;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.SearchCriteria;

@Service
public class AdminServiceImp implements AdminService {

	@Autowired
	AdminDAO adminDAO;
	
	@Override
	public List<User> getUserInfo(SearchCriteria searchCRI) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.getUserInfo(searchCRI);
	}

	@Override
	public int getUserPortInfo(int user_id) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.getUserPortInfo(user_id);
	}

	@Override
	public int countUserInfo(String searchType, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.countUserInfo(searchType, keyword);
	}

}
