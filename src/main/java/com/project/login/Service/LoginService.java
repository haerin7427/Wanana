package com.project.login.Service;

import com.project.login.DTO.User;

public interface LoginService {
	
	//회원가입
	public void joinuser(User user)  throws Exception;
	public void joinSocialUser(User user)  throws Exception;
	
	//로그인
	public User login(User user) throws Exception;
	public User socialLogin(User user) throws Exception;
	
	//중복 아이디 체크
	public int userIdCheck(String user_id) throws Exception;
	
	public int socialCheck(User user) throws Exception;
}