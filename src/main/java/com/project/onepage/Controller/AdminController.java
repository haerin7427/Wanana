package com.project.onepage.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping(value = "/admin/manage") 
	public ModelAndView managePage (HttpSession session, HttpServletRequest request, SearchCriteria searchCRI) throws Exception {
		System.out.println("<managePage> controller");
		
		System.out.println("first : "+searchCRI.toString());

		
		if(searchCRI.getKeyword() == "")
			searchCRI.setSearchType(null);
		
		System.out.println("second : "+searchCRI.toString());
		
		List<User> userData = adminDao.getUserInfo(searchCRI);
		int count = adminDao.countUserInfo(searchCRI.getSearchType(), searchCRI.getKeyword());
		System.out.println("count : " + count);
		
		ObjectMapper mapper=new ObjectMapper();
		String jArray=mapper.writeValueAsString(userData);
		
		PageMaker pageMaker=new PageMaker();
		System.out.println(searchCRI);
		pageMaker.setCri(searchCRI);
		pageMaker.setTotalCount(count);
		System.out.println("pageMaker : " + pageMaker);
		int pageNum = searchCRI.getPage(); //현재 페이지 number
		int perPageNum = searchCRI.getPerPageNum(); //현재 페이지 number
		
	
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
