package com.project.portfolio.DAO;

import java.util.List;

import com.project.portfolio.DTO.Category;
import com.project.portfolio.DTO.Category_Item;
import com.project.portfolio.DTO.Color;
import com.project.portfolio.DTO.Data;
import com.project.portfolio.DTO.Item;
import com.project.portfolio.DTO.Option;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.Portfolio2;
import com.project.portfolio.DTO.SearchCriteria;
import com.project.portfolio.DTO.Template;
import com.project.portfolio.DTO.dataKey;

public interface PortfolioDAO {
	
	//마이페이지에서 해당 유저의 포트폴리오 리스트 뿌리기
	public List<Portfolio> portfolioList(int user_id) throws Exception;

	//마이페이지에서 고른 포트폴리오로 이동
	public List<Data> getCheckPortfolio(int portfolio_ID) throws Exception;	
	public String getCheckTemplateID(int portfolio_ID) throws Exception;
	
	//포트폴리오 삭제
	public void deletePortfolio(int portfolio_ID) throws Exception;
	
	//step1. 포트폴리오 이름 저장 -> 만드는 페이지로 넘어감
	public int portfolio_ID(Portfolio port) throws Exception;
	
	//step2. 포트폴리오 항목들과 템플릿 정보 가져오기 
	public List<Category_Item> getCategoryItem() throws Exception;
	public List<Template> getTemplate() throws Exception;
	
	//step3. 이전 데이터 불러오기 (사용자가 누른 항목만!)
	public List<Data> getMyData(dataKey dk) throws Exception;
	
	
	//step4. 새 데이터 추가하기 
	public List<Item> getItem() throws Exception;
	
	// 옵션 제공
	public List<Option> getOption() throws Exception;
	
	//step5.미리보기 
	public int getData_no(String item_id) throws Exception;
	
	//step6.데이터 DB에 넣기
	public void inData(Data info) throws Exception;
	public void update_Portfolio(Portfolio2 port) throws Exception;
	
	//step7.템플릿에 데이터 뿌리기
	public List<Data> callData(int portfolio_id) throws Exception;

	//사진명 넣기
	public  void savePhoto (Data fileInfo) throws Exception;

	List<Item> getItemBox(int item_id) throws Exception;
	
	public Portfolio getPortInfo(int portID) throws Exception;

	public void updatePortfolio(Portfolio port) throws Exception;

	public void deleteDetail(int portfolio_id) throws Exception;

	public List<Portfolio> getPortfolios(SearchCriteria cri) throws Exception;
	
	public List<Color> getColorList(int template_id) throws Exception;
	
	public Color getColorInfo(int color_id) throws Exception;
	
	public int countPortfolio(String searchType, String keyword) throws Exception;
}
