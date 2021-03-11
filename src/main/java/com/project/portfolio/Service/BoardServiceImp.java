package com.project.portfolio.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.portfolio.DAO.BoardDAO;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.SearchCriteria;

@Service
public class BoardServiceImp implements BoardService {

	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public List<Portfolio> getPortfolios(SearchCriteria cri) throws Exception {
		
		return boardDAO.getPortfolios(cri);

	}

	@Override
	public int countPortfolio(String searchType, String keyword) throws Exception {
		return boardDAO.countPortfolio(searchType, keyword);
	}
}
