package com.project.portfolio.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSession sqlSession;

	private static String namespace ="com.project.mappers.portfolio_mapper";

	@Override
	public List<Portfolio> getPortfolios(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".portfolioBoard",cri);
	}
	
	@Override
	public int countPortfolio(String searchType, String keyword) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchType", searchType);
		map.put("keyword", keyword);
		return sqlSession.selectOne("countPortfolio", map);
	}

}
