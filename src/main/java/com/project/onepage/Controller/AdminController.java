package com.project.onepage.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.login.DTO.User;
import com.project.portfolio.DAO.AdminDAO;
import com.project.portfolio.DTO.PageMaker;
import com.project.portfolio.DTO.SearchCriteria;

@RestController
@RequestMapping(value = "/")
public class AdminController {
	@Autowired
	private AdminDAO adminDao;
	
	@RequestMapping(value = "/manage") 
	public ModelAndView managePage (HttpSession session, HttpServletRequest request, SearchCriteria searchCRI) throws Exception {
		System.out.println("<managePage> controller");
		
		System.out.println("first : "+searchCRI.toString());

		
		if(searchCRI.getKeyword() == "")
			searchCRI.setSearchType(null);
		
		System.out.println("second : "+searchCRI.toString());
		
		List<User> userData = adminDao.getUserInfo(searchCRI);
		int count = adminDao.countUserInfo(searchCRI.getSearchType(), searchCRI.getKeyword());
		System.out.println("count : " + count);
		
		JSONArray jArray = new JSONArray();
	    
	    try {
	    	JSONObject ob;
	    	int portCount=0;
	    	for(int i=0; i<userData.size();i++) {
	    		ob =new JSONObject();
	    		ob.put("id", userData.get(i).getId());
	    		ob.put("name", userData.get(i).getName());
	    		ob.put("phone", userData.get(i).getPhone_number());
	    		ob.put("email", userData.get(i).getEmail_address());
	    		portCount=adminDao.getUserPortInfo(userData.get(i).getId());
	    		ob.put("portCount", portCount);
	    		jArray.put(ob);
	    	}
	    }catch(JSONException e){
		 	e.printStackTrace();
		}
		
		PageMaker pageMaker=new PageMaker();
		System.out.println(searchCRI);
		pageMaker.setCri(searchCRI);
		pageMaker.setTotalCount(count);
		System.out.println("pageMaker : " + pageMaker);
		int pageNum = searchCRI.getPage(); //현재 페이지 number
		int perPageNum = searchCRI.getPerPageNum(); //현재 페이지 number
		
	    ObjectMapper mapper=new ObjectMapper();
		String searchOptionView = mapper.writeValueAsString(searchCRI.getSearchType());
		String keywordView = mapper.writeValueAsString(searchCRI.getKeyword());
		

		ModelAndView mav = new ModelAndView();
		mav.setViewName("manage");
		mav.addObject("userData", jArray);
		mav.addObject("count", count);
		mav.addObject("searchOption", searchCRI.getSearchType());
		mav.addObject("keyword", searchCRI.getKeyword());
		mav.addObject("searchOptionView", searchOptionView);
		mav.addObject("keywordView", keywordView);
		mav.addObject("pageMaker", pageMaker);
		mav.addObject("pageN", pageNum);
		mav.addObject("perPageN", perPageNum);
		System.out.println("<managePage> controller Finish!");
		
		return mav;
	}
	
	@RequestMapping(value = "/admin/manage") 
	public ModelAndView adminManagePage (HttpSession session, HttpServletRequest request, SearchCriteria searchCRI) throws Exception {
		System.out.println("<managePage> controller");
		
		System.out.println("first : "+searchCRI.toString());

		
		if(searchCRI.getKeyword() == "")
			searchCRI.setSearchType(null);
		
		System.out.println("second : "+searchCRI.toString());
		
		List<User> userData = adminDao.getAdminInfo(searchCRI);
		int count = adminDao.countAdminInfo(searchCRI.getSearchType(), searchCRI.getKeyword());
		System.out.println("count : " + count);
		
		JSONArray jArray = new JSONArray();
	    
	    try {
	    	JSONObject ob;
	    	int portCount=0;
	    	for(int i=0; i<userData.size();i++) {
	    		ob =new JSONObject();
	    		ob.put("id", userData.get(i).getId());
	    		ob.put("name", userData.get(i).getName());
	    		ob.put("phone", userData.get(i).getPhone_number());
	    		ob.put("email", userData.get(i).getEmail_address());
	    		ob.put("portCount", portCount);
	    		jArray.put(ob);
	    	}
	    }catch(JSONException e){
		 	e.printStackTrace();
		}
		
		PageMaker pageMaker=new PageMaker();
		System.out.println(searchCRI);
		pageMaker.setCri(searchCRI);
		pageMaker.setTotalCount(count);
		System.out.println("pageMaker : " + pageMaker);
		int pageNum = searchCRI.getPage(); //현재 페이지 number
		int perPageNum = searchCRI.getPerPageNum(); //현재 페이지 number
		
	    ObjectMapper mapper=new ObjectMapper();
		String searchOptionView = mapper.writeValueAsString(searchCRI.getSearchType());
		String keywordView = mapper.writeValueAsString(searchCRI.getKeyword());
		

		ModelAndView mav = new ModelAndView();
		mav.setViewName("manage");
		mav.addObject("userData", jArray);
		mav.addObject("count", count);
		mav.addObject("searchOption", searchCRI.getSearchType());
		mav.addObject("keyword", searchCRI.getKeyword());
		mav.addObject("searchOptionView", searchOptionView);
		mav.addObject("keywordView", keywordView);
		mav.addObject("pageMaker", pageMaker);
		mav.addObject("pageN", pageNum);
		mav.addObject("perPageN", perPageNum);
		System.out.println("<managePage> controller Finish!");
		
		return mav;
	}
}
