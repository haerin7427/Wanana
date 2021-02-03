package com.project.portfolio.Service;

import java.util.List;
import com.project.portfolio.DTO.Category;
import com.project.portfolio.DTO.Category_Item;
import com.project.portfolio.DTO.Data;
import com.project.portfolio.DTO.Item;
import com.project.portfolio.DTO.Option;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.Portfolio2;
import com.project.portfolio.DTO.Template;
import com.project.portfolio.DTO.dataKey;

public interface PortfolioService {
	
	//마이페이지에서 해당 유저의 포트폴리오 리스트 뿌리기
	public List<Portfolio> portfolioList(int user_id) throws Exception;

	
	//마이페이지에서 고른 포트폴리오로 이동
	//<!-- 선택한 포트폴리오 템플릿 html 이름 가져오기 -->
	public String getCheckTemplateID(int portfolio_ID)  throws Exception;
	//<!--  선택한 포트폴리오 데이터 가져오기 -->
	public List<Data> getCheckPortfolio(int portfolio_ID) throws Exception;
	
	
	//포트폴리오 삭제
	//<!-- 선택한 포트폴리오 데이터 삭제하기 -->
	public void deletePortfolio(int portfolio_ID) throws Exception;
	
	
	//step1. 포트폴리오 이름 저장 -> 만드는 페이지로 넘어감
	//<!-- portfolio id 생성 (포트폴리오 생성) -->
	public int portfolio_ID(Portfolio port) throws Exception;
	
	
	//step2. 포트폴리오 항목들과 템플릿 정보 가져오기 
	//<!--  category 별 item 가져오기-->
	public List<Category_Item> getCategoryItem() throws Exception;
	//<!-- template 데이터 가져오기 (template 종류 나열을 위해서)-->
	public List<Template> getTemplate() throws Exception;
	
	
	//step3. 이전 데이터 불러오기 (사용자가 누른 항목만!)
	//<!-- user_id의 이전 data 중 최근 3개의 data 들고오기 -->
	public List<Data> getData(dataKey dk) throws Exception;
	
	
	//step4. 새 데이터 추가하기 
	//<!-- Item_id에 맞는 input type 가져오기 (아이템에 따라 사용자가 입력할 수 있는 칸 제공 -->
	public List<Item> getItem() throws Exception;
	
	
	//항목 중에 select하는 항목에 옵션 제공
	//<!--  select option list 가져오기 (아이템에 따라 Option 가져오기) -->
	public List<Option> getOption() throws Exception;
	

	
	//step5.미리보기 
	//<!-- item_id의 data_no(해당 아이템의 하위 아이템의 개수) 들고오기 -->
	public int getData_no(String item_id) throws Exception;
	
	
	
	//step6.데이터 DB에 넣기
	//<!-- 해당 포트폴리오 데이터 DB에 넣기 -->
	public void inData(Data info) throws Exception;
	//<!-- 해당 포트폴리오의 template_id 업데이트 하기  --> 
	public void update_Portfolio(Portfolio2 port) throws Exception;
	
	
	
	//step7.템플릿에 데이터 뿌리기
	//<!-- 템플릿에 데이터 뿌릴 때, 포트폴리오에 넣을 데이터 가져오기-->
	public List<Data> callData(int portfolio_id) throws Exception;
	
	//포트폴리오 사진명 저장하기
	void savePhoto(Data fileInfo) throws Exception;


	List<Item> getItemBox(int item_id) throws Exception;

	//<수정> 기존 portfolio 정보 가져오기 
	public Portfolio getPortInfo(int portID) throws Exception;
		
		//<수정> portfolio 내용 update
		public void updatePortfolio(Portfolio port) throws Exception;
		
		//<수정> detail 내용 delete
		public void deleteDetail(int portfolio_id) throws Exception;
	

}
