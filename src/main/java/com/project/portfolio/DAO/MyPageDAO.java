package com.project.portfolio.DAO;

import com.project.login.DTO.User;

public interface MyPageDAO {

	public User getUserInfo(String email) throws Exception;
	public User modifyUserInfo(int id, String name, String email, String phone) throws Exception;
}
