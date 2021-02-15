package com.project.portfolio.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.portfolio.DAO.PortfolioDAO;
import com.project.portfolio.DTO.Category_Item;
import com.project.portfolio.DTO.Color;
import com.project.portfolio.DTO.Data;
import com.project.portfolio.DTO.Item;
import com.project.portfolio.DTO.Option;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.Portfolio2;
import com.project.portfolio.DTO.Template;
import com.project.portfolio.DTO.dataKey;

@Service
public class PortfolioServiceImp implements PortfolioService {
	
	@Autowired
	 PortfolioDAO portfolioDAO;

	//포트폴리오 리스트 가져오기
	@Override
	public List<Portfolio> portfolioList(int user_id)  throws Exception{
		
		return portfolioDAO.portfolioList(user_id);	
	}
	
	
	@Override
	public String getCheckTemplateID(int portfolio_ID) throws Exception {
		return portfolioDAO.getCheckTemplateID(portfolio_ID);
	}
	
	
	@Override
	public List<Data> getCheckPortfolio(int portfolio_ID) throws Exception {
		return portfolioDAO.getCheckPortfolio(portfolio_ID);
	}
	
	
	@Override
	public void deletePortfolio(int portfolio_ID) throws Exception {
		portfolioDAO.deletePortfolio(portfolio_ID);
	}
	
	
	@Override
	public int portfolio_ID(Portfolio port) throws Exception {
		// TODO Auto-generated method stub
		return portfolioDAO.portfolio_ID(port);
	}
	
	
	@Override
	public List<Category_Item> getCategoryItem() throws Exception {
		return portfolioDAO.getCategoryItem();
	}
	
	
	@Override
	public List<Template> getTemplate() throws Exception {
		return portfolioDAO.getTemplate();
	}
	
	
	@Override
	public List<Data> getData(dataKey dk) throws Exception {
		// TODO Auto-generated method stub
		return portfolioDAO.getMyData(dk);
	}
	
	
	@Override
	public List<Item> getItem() throws Exception {
		return portfolioDAO.getItem();
	}
	
	
	@Override
	public List<Option> getOption() throws Exception{
		return portfolioDAO.getOption();
	}
	
	
	@Override
	public int getData_no(String item_id) throws Exception {
		// TODO Auto-generated method stub
		return portfolioDAO.getData_no(item_id);
	}
	
	
	
	@Override
	public void inData(Data info) throws Exception {
		// TODO Auto-generated method stub
		portfolioDAO.inData(info);
		
	}
	
	
	@Override
	public void update_Portfolio(Portfolio2 port) throws Exception {
		// TODO Auto-generated method stub
		portfolioDAO.update_Portfolio(port);
	}
	
	
	@Override
	public List<Data> callData(int portfolio_id) throws Exception {
		// TODO Auto-generated method stub
		return portfolioDAO.callData(portfolio_id);
	}
	
	@Override
	public void savePhoto(Data fileInfo) throws Exception {
		// TODO Auto-generated method stub
		portfolioDAO.savePhoto(fileInfo);
	}
	
	@Override
	public List<Item> getItemBox(int item_id) throws Exception{
		return portfolioDAO.getItemBox(item_id);
	}
	
	@Override
	public Portfolio getPortInfo(int portID) throws Exception {
		// TODO Auto-generated method stub
		return portfolioDAO.getPortInfo(portID);
	}


	@Override
	public void updatePortfolio(Portfolio port) throws Exception {
		// TODO Auto-generated method stub
		portfolioDAO.updatePortfolio(port);
	}


	@Override
	public void deleteDetail(int portfolio_id) throws Exception {
		// TODO Auto-generated method stub
		portfolioDAO.deleteDetail(portfolio_id);
	}

	
	@Override
	public List<Color> getColorList(int template_id) throws Exception{
		return portfolioDAO.getColorList(template_id);
	}
	
	@Override
	public Color getColorInfo(int color_id) throws Exception{
		return portfolioDAO.getColorInfo(color_id);



	@Override
	public List<Portfolio> getPortfolios() throws Exception {
		// TODO Auto-generated method stub
		return portfolioDAO.getPortfolios();

	}
}

