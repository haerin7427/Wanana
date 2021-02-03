package com.project.login.DAO;

import com.project.login.DTO.User;

public interface LoginDAO {

	//회원가입 하기
	public void insertUser(User user)  throws Exception;
	public void insertSocialUser(User user)  throws Exception;
	
	//로그인 하기
	public User readMemberWithIDPW(String userid, String userpw) throws Exception;
	public User readMemberWithEmail(String name, String email) throws Exception;
	
	//아이디 중복 체크
	public int checkOverId(String user_id) throws Exception;
	public int socialCheck(User user) throws Exception;
}