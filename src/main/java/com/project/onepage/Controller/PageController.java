package com.project.onepage.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.portfolio.DAO.AdminDAO;


@RestController
@RequestMapping(value = "/") // 주소 패턴
public class PageController{

	@Autowired
	private AdminDAO adminDao;
	//수정 - 로그인이 되었을 때 new_home으로 가게
	//로그인 안됐는데, 메인 페이지로 갈 때
	@RequestMapping(value = "/home") // GET 방식으로 페이지 호출
	public ModelAndView homeGo(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("ID")!=null) {
			mav.addObject("portCount",adminDao.getUserPortInfo((Integer)session.getAttribute("ID")));
		}
		else
			mav.addObject("portCount",0);
		mav.setViewName("home");
        return mav;
	}

	//로그인 됐는데, 메인 페이지로 갈 때
//	@RequestMapping(value = "/new_home") // GET 방식으로 페이지 호출
//	public ModelAndView new_homeGo() throws Exception {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("home");
//		return mav;
//	}
}
