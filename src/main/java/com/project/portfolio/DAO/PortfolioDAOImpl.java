package com.project.portfolio.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.portfolio.DTO.Category;
import com.project.portfolio.DTO.Category_Item;
import com.project.portfolio.DTO.Color;
import com.project.portfolio.DTO.Data;
import com.project.portfolio.DTO.Item;
import com.project.portfolio.DTO.Option;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.Portfolio2;
import com.project.portfolio.DTO.Template;
import com.project.portfolio.DTO.dataKey;

@Repository
public class PortfolioDAOImpl implements PortfolioDAO{
	
	@Autowired
	SqlSession sqlSession;

	private static String namespace ="com.project.mappers.portfolio_mapper";

	
	//포트폴리오 리스트 가져오기
	@Override
	public List<Portfolio> portfolioList(int user_id)  throws Exception{
		
		return sqlSession.selectList(namespace+".getMyPortfolio",user_id);
	}

	//선택한 포트폴리오 데이터 가져와서 보여주기
	@Override
	public List<Data> getCheckPortfolio(int portfolio_ID) throws Exception {
		return sqlSession.selectList(namespace + ".checkPortfolio",portfolio_ID);
	}
	@Override
	public String getCheckTemplateID(int portfolio_ID) throws Exception {
		return sqlSession.selectOne(namespace+".checkTemplateID",portfolio_ID);
	}

	
	//선택한 포트폴리오 삭제
	@Override
	public void deletePortfolio(int portfolio_ID) throws Exception {
		sqlSession.delete(namespace + ".deletePortfolio",portfolio_ID);
	}
	
	
	//포트폴리오 아이디 생성
	@Override
	public int portfolio_ID(Portfolio port) throws Exception {
		
		return sqlSession.insert(namespace+".portfolio_id",port);
	}
	
	//포트폴리오 항목들과 템플릿 정보 가져오기 
	@Override
	public List<Template> getTemplate() throws Exception {
		return sqlSession.selectList(namespace + ".template");
	}
	@Override
	public List<Category_Item> getCategoryItem() throws Exception {
		
		return sqlSession.selectList(namespace + ".category_item");
	}
	
	
	//이전 데이터 불러오기
	@Override
	public List<Data> getMyData(dataKey dk) throws Exception {
		return sqlSession.selectList(namespace+".getData",dk);
	}
	
	
	//새 데이터 추가하기 
	@Override
	public List<Item> getItem() throws Exception {
		return sqlSession.selectList(namespace + ".item");
	}
	
	
	//항목 중에 select하는 항목에 옵션 제공
	@Override
	public List<Option> getOption() throws Exception{
		return sqlSession.selectList(namespace + ".option");
	}
	
	
	//미리보기
	@Override
	public int getData_no(String item_id) throws Exception {
		
		return sqlSession.selectOne(namespace+".getDataNo",item_id);
	}
	
	
	//DB에 데이터 넣기
	@Override
	public void inData(Data info) throws Exception {
		
		sqlSession.insert(namespace+".masterDataIN",info);
		
	}
	//포트폴리오 테이블 수정
	@Override
	public void update_Portfolio(Portfolio2 port) throws Exception {
		
		sqlSession.update(namespace+".update_template",port);
	}
	
	
	//포트폴리오에 넣을 데이터 가져오기
	@Override
		public List<Data> callData(int portfolio_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".callData",portfolio_id);
	}
	
	//file 정보 넣기 
		@Override
		public void savePhoto(Data fileInfo) {
			// TODO Auto-generated method stub
			sqlSession.insert(namespace + ".savePhoto", fileInfo);
		}

		@Override
		public List<Item> getItemBox(int item_id) throws Exception{
			return sqlSession.selectList(namespace + ".itemBox",item_id);
		}
	
		@Override
		public Portfolio getPortInfo(int portID) throws Exception {
			// TODO Auto-generated method stub
			return sqlSession.selectOne(namespace + ".temID",portID);
		}

		@Override
		public void updatePortfolio(Portfolio port) throws Exception {
			// TODO Auto-generated method stub
			sqlSession.update(namespace + ".portUpdate",port);
		}

		@Override
		public void deleteDetail(int portfolio_id) throws Exception {
			// TODO Auto-generated method stub
			sqlSession.delete(namespace + ".detailDelete",portfolio_id);
			
		}

		
		@Override
		public List<Color> getColorList(int template_id) throws Exception{
			return sqlSession.selectList(namespace + ".getColorList",template_id);
		}
		
		@Override
		public Color getColorInfo(int color_id) throws Exception{
			return sqlSession.selectOne(namespace + ".getColorInfo",color_id);


		@Override
		public List<Portfolio> getPortfolios() throws Exception {
			// TODO Auto-generated method stub
			return sqlSession.selectList(namespace + ".portfolioBoard");

		}
}
