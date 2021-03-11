package com.project.portfolio.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.portfolio.DTO.Data;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.Service.BoardService;
import com.project.portfolio.Service.PortfolioService;
import com.project.portfolio.DTO.PageMaker;
import com.project.portfolio.DTO.SearchCriteria;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping(value = "/") // 주소 패턴

public class BoardController {

	@Autowired
	private BoardService boardService;
	@Autowired
	private PortfolioService portfolioService;

	//포트폴리오 게시판 가기
	@RequestMapping(value = "/portfolio_board") // GET 방식으로 페이지 호출
	public ModelAndView GoPortfolioBoard(SearchCriteria cri,HttpSession session) throws Exception {
		System.out.println("GoPortfolioBoard controller!");
		ModelAndView mav = new ModelAndView();
		
		try {
			int user_id=(Integer) session.getAttribute("ID");
			List<Portfolio> portinfo = boardService.getPortfolios(cri);
			int count=boardService.countPortfolio(cri.getSearchType(), cri.getKeyword());
			System.out.println(portinfo.toString());
			System.out.println("get info!");
			JSONArray jArray = new JSONArray();
	        try {
	        	for (int i = 0; i < portinfo.size() ; i++) {   
	        		JSONObject ob =new JSONObject();
	        		ob.put("port_id", portinfo.get(i).getId());
	        		ob.put("port_temId", portinfo.get(i).getTemplate_id());
	        		ob.put("port_title", portinfo.get(i).getTitle());
	        		ob.put("port_date", portinfo.get(i).getUpdate_date());
	        		ob.put("isVerticle", portinfo.get(i).getIsVerticle());
	        		System.out.println(ob.toString());

		            jArray.put(ob);
		        }
	        	//System.out.println(jArray.toString());
	        	System.out.println("개수 : " + jArray.length());
	        }catch(JSONException e){
	        	e.printStackTrace();
	        }
	        PageMaker pageMaker = new PageMaker();
	        pageMaker.setCri(cri);
			pageMaker.setTotalCount(count);
			
			mav.addObject("searchOption", cri.getSearchType());
			mav.addObject("keyword", cri.getKeyword());
			
			mav.addObject("pageMaker", pageMaker);
	        mav.addObject("portinfo", jArray);
			mav.setViewName("portfolio_board");
		}catch(NullPointerException  e){
			 mav=new ModelAndView("login");
			 mav.addObject("no_login","세션이 만료되었습니다. 다시 로그인 해주세요:)");
		}
		
	    return mav;
	}
	
	//포트폴리오 모달을 위한 컨트롤러
	@RequestMapping(value = "board/portfolioView" ,method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (POST)
	public ModelAndView portfolioModal(HttpSession session,HttpServletRequest request) throws Exception {

		ModelAndView mav = new ModelAndView();
		System.out.println("portfolioView controller!!" );
		int id=Integer.parseInt(request.getParameter("portfolioID"));
		
		String template_name=portfolioService.getCheckTemplateID(id);
		List<Data> list=portfolioService.getCheckPortfolio(id);
		Portfolio portInfo = portfolioService.getPortInfo(id);
		
		String content[];
				
		JSONArray jArray2 = new JSONArray();
		JSONArray template_info = new JSONArray();
		try {
			JSONObject ob2 =new JSONObject();
			ob2.put("template_color", portInfo.getColor());
    		ob2.put("template_font", portInfo.getFont());
    		ob2.put("template_fontSize", "15px");
    		template_info.put(ob2);
			for (int i = 0; i < list.size() ; i++) {   
				JSONObject ob =new JSONObject();
			    content=new String[6];
			    ob.put("item_id", list.get(i).getItem_id());
			    ob.put("data_no", list.get(i).getData_no());
			       
			    content[0]=list.get(i).getContent1();
			    content[1]=list.get(i).getContent2();
			    content[2]=list.get(i).getContent3();
			    content[3]=list.get(i).getContent4();
			    content[4]=list.get(i).getContent5();
			    content[5]=list.get(i).getContent6();
			            
			    ob.put("content", content);
			            
			    jArray2.put(ob);

			        	
			}
		}catch(JSONException e){
		 	e.printStackTrace();
		}
		System.out.println(template_info);
		mav.addObject("data_list", jArray2);
		mav.addObject("portfolio_ID",id);
		mav.addObject("template_info",template_info);
		mav.addObject("temName",template_name);
		mav.setViewName("boardModal");
		
		return mav;
	}
}
