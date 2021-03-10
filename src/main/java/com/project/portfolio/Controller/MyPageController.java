package com.project.portfolio.Controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.portfolio.Service.MyPageService;
import com.project.login.DTO.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/") // 주소 패턴
public class MyPageController{

	@Autowired
	private MyPageService mypageService;

	@RequestMapping(value= "/userInformation") // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
	@ResponseBody
	public String getUserInfo(HttpSession session) throws Exception {
		
		String email = "21700000@handong.edu";
		if(session.getAttribute("email")!=null) {
			email = (String)session.getAttribute("email");
		}
			
		User userinfo = mypageService.getUserInfo(email);
			
		System.out.println("userinfo: "+userinfo);
		
		ObjectMapper mapper=new ObjectMapper();
		String userInfo=mapper.writeValueAsString(userinfo);
			
		return userInfo;
	}
}
