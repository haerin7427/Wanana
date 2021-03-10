package com.project.portfolio.DAO;

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

}
