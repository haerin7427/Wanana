package com.project.portfolio.DAO;

import java.util.List;

import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.SearchCriteria;

public interface BoardDAO {


	public List<Portfolio> getPortfolios(SearchCriteria cri) throws Exception;
	public int countPortfolio(String searchType, String keyword) throws Exception ;
	public List<Portfolio> getLikePort() throws Exception;
}
