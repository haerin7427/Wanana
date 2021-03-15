package com.project.portfolio.Service;

import java.util.List;

import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.SearchCriteria;

public interface BoardService {
	

	//게시판용 포트폴리오 정보 가져오기
	public List<Portfolio> getPortfolios(SearchCriteria cri) throws Exception;

	public int countPortfolio(String searchType, String keyword) throws Exception ;
	public List<Portfolio> getLikePort() throws Exception;
}
