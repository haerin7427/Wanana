package com.project.login.DAO;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.login.DTO.User;

@Repository
public class LoginDAOImp implements LoginDAO{
	
	@Autowired
	SqlSession sqlSession;

	private static String namespace ="com.project.mappers.portfolio_mapper";

	@Override
	public void insertUser(User user) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".Join_user",user);
		
	}
	
	@Override
	public void insertSocialUser(User user) throws Exception {
		sqlSession.insert(namespace+".JoinSocialUser",user);
		
	}
	
	@Override
	public User readMemberWithIDPW(String userid, String userpw) throws Exception{
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("userid", userid);
		paramMap.put("userpw", userpw);
		
		return sqlSession.selectOne(namespace+".login", paramMap);
	}
	@Override
	public User readMemberWithEmail(String name, String email) throws Exception{
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("name", name);
		paramMap.put("email", email);
		
		return sqlSession.selectOne(namespace+".socialLogin", paramMap);
	}

	@Override
	public int checkOverId(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".checkOverId",user_id);
	}
	
	@Override
	public int socialCheck(User user) throws Exception {
		return sqlSession.selectOne(namespace+".socialCheck",user);
	}
	
}