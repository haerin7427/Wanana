package com.project.portfolio.DAO;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.login.DTO.User;

@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Autowired
	SqlSession sqlSession;

	private static String namespace ="com.project.mappers.portfolio_mapper";
	
	@Override
	public User getUserInfo(String email) throws Exception {
		return sqlSession.selectOne(namespace + ".getUserInfo",email);
	}
	
	@Override
	public User modifyUserInfo(int id, String name, String email, String phone) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		map.put("phone", phone);
		map.put("email", email);
		return sqlSession.selectOne(namespace + ".modifyUserInfo",map);
	}

}
