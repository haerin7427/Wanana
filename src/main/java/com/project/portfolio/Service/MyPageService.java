package com.project.portfolio.Service;

import com.project.login.DTO.User;

public interface MyPageService {

	public User getUserInfo(String email) throws Exception;
	public User modifyUserInfo(User user) throws Exception;
}
