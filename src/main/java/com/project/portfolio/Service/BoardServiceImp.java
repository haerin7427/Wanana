package com.project.portfolio.Service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.login.DTO.User;
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
	
	@Override
	public List<Portfolio> getLikePort() throws Exception {
		return boardDAO.getLikePort();
	}
	
	@Override
	public int linkDupCheck(String link) throws Exception{
		return boardDAO.linkDupCheck(link);
	}
	
	@Override
	public Integer checkLike(int port_id, int user_id) throws Exception{
		return boardDAO.checkLike(port_id, user_id);
	}
	
	@Override
	public int likeCnt(int portfolio_id) throws Exception{
		return boardDAO.likeCnt(portfolio_id);
	}
	
	@Override
	public void createLike(int portfolio_id,int user_id,Date update) throws Exception{
		boardDAO.createLike(portfolio_id,user_id,update);
	}
	
	@Override
	public void updateLike(int portfolio_id,int user_id, int isLike,Date update) throws Exception{
		boardDAO.updateLike(portfolio_id,user_id,isLike,update);
	}
	
	@Override
	public List<String> getInterest(int port_id) throws Exception{
		return boardDAO.getInterest(port_id);
	}
	
	@Override
	public String getPortUser(int port_id) throws Exception{
		return boardDAO.getPortUser(port_id);
	}

	@Override
	public User getPortUserInfo(Integer user_id) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.getPortUserInfo(user_id);
	}
	
	@Override
	public Date portfolioUpdateTime(int port_id) throws Exception{
		return boardDAO.portfolioUpdateTime(port_id);
	}
}
