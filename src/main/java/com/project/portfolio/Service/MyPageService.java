package com.project.portfolio.Service;

import com.project.login.DTO.User;

public interface MyPageService {

	public User getUserInfo(String email) throws Exception;
	public User modifyUserInfo(int id, String name, String email, String phone) throws Exception;
}
