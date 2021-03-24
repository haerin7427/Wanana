package com.project.portfolio.Service;

import java.util.List;

import com.project.login.DTO.User;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.SearchCriteria;

public interface AdminService {

	public List<User> getUserInfo(SearchCriteria searchCRI) throws Exception;
	public int getUserPortInfo(int user_id) throws Exception;
	public int countUserInfo(String searchType, String keyword) throws Exception;
}
