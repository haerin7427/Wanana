package com.project.login.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.login.DAO.LoginDAO;
import com.project.login.DTO.User;

@Service
public class LoginServiceImp implements LoginService{

	@Autowired
	 LoginDAO loginDAO;


	@Override
	public void joinuser(User user)  throws Exception{
		// TODO Auto-generated method stub
		loginDAO.insertUser(user);
	}
	
	@Override
	public void joinSocialUser(User user)  throws Exception{
		loginDAO.insertSocialUser(user);
	}

	@Override
	public User login(User vo) throws Exception {
		User returnVO = null;
		try {
			returnVO = loginDAO.readMemberWithIDPW(vo.getUser_id(), vo.getPwd());
			System.out.println("S: 로그인 아디: "+vo.getUser_id()+" 비번: "+vo.getPwd()+" 이름: "+vo.getName());
		} catch (Exception e) {
			e.printStackTrace();
			returnVO = null; //실행하다 문제가 생겼을때 해당 데이터를 보내지않겠다는 의미 = 예외처리
		}
		return returnVO;
	}
	
	@Override
	public User socialLogin(User vo) throws Exception {
		User returnVO = null;
		try {
			returnVO = loginDAO.readMemberWithEmail(vo.getName(), vo.getEmail_address());
			System.out.println("S: 로그인 이메일: "+vo.getEmail_address()+" 이름: "+vo.getName());
		} catch (Exception e) {
			e.printStackTrace();
			returnVO = null; //실행하다 문제가 생겼을때 해당 데이터를 보내지않겠다는 의미 = 예외처리
		}
		return returnVO;
	}
	
	@Override
	public int userIdCheck(String user_id) throws Exception {
		return loginDAO.checkOverId(user_id);
	}
	
	@Override
	public int socialCheck(User user) throws Exception {
		return loginDAO.socialCheck(user);
	}
	
}