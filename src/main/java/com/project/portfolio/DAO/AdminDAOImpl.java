package com.project.portfolio.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.login.DTO.User;
import com.project.portfolio.DTO.SearchCriteria;

@Repository
public class AdminDAOImpl implements AdminDAO {


	@Autowired
	SqlSession sqlSession;
	
	private static String namespace ="com.project.mappers.portfolio_mapper";

	//user info 가져오기 
	public List<User> getUserInfo(SearchCriteria searchCRI) throws Exception{
		return sqlSession.selectList(namespace + ".getAllUser",searchCRI);
	}
	
	public int getUserPortInfo(int user_id) throws Exception{
		return sqlSession.selectOne(namespace + ".getUserPortInfo",user_id);
	}
	
	public int countUserInfo(String searchType, String keyword) throws Exception{
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType", searchType);
		map.put("keyword", keyword);
		return sqlSession.selectOne(namespace + ".countUserInfo",map);
	}
	
	public List<User> getAdminInfo(SearchCriteria searchCRI) throws Exception{
		return sqlSession.selectList(namespace + ".getAllAdmin",searchCRI);
	}
	
	
	public int countAdminInfo(String searchType, String keyword) throws Exception{
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType", searchType);
		map.put("keyword", keyword);
		return sqlSession.selectOne(namespace + ".countAdminInfo",map);
	}
}
