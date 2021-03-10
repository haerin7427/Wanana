package com.project.portfolio.DAO;

import com.project.login.DTO.User;

public interface MyPageDAO {

	public User getUserInfo(String email) throws Exception;
}
