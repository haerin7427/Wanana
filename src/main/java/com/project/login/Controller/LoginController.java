package com.project.login.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;


import com.project.login.DTO.User;
import com.project.login.Service.LoginService;
import com.project.login.DTO.GoogleOAuthRequest;
import com.project.login.DTO.GoogleOAuthResponse;

import org.springframework.http.ResponseEntity;

import com.fasterxml.jackson.core.JsonProcessingException;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;


@RestController
@RequestMapping(value = "/") // 주소 패턴
public class LoginController{
	
	@Autowired
	private LoginService loginService;
	public String beforeUrl;
	
	final static String GOOGLE_AUTH_BASE_URL = "https://accounts.google.com/o/oauth2/v2/auth";
	final static String GOOGLE_TOKEN_BASE_URL = "https://oauth2.googleapis.com/token";
	final static String GOOGLE_REVOKE_TOKEN_BASE_URL = "https://oauth2.googleapis.com/revoke";

	String clientId="301548670560-kv6g6e8emg8kuac082ib4q4eah7hp4qu.apps.googleusercontent.com";

	String clientSecret="R9mJ3tDkMqKiqOPrVX96Pr6C";
	
	//회원가입
	@RequestMapping(value = "/userform") // GET 방식으로 페이지 호출

	  public ModelAndView userGET() throws Exception {
		
		System.out.println("userform 입니다");
		ModelAndView mav = new ModelAndView();
        mav.setViewName("userform");
        return mav;
	}

	@RequestMapping(value = "/userform", method = RequestMethod.POST) // POST방식으로 내용 전송

	  public ModelAndView registPOST(User user) throws Exception { // 인자값으로 REDIRECT 사용

		loginService.joinuser(user); // 글작성 서비스 호출
		
		ModelAndView mav = new ModelAndView();
        mav.addObject("no_login","회원가입에 성공하셨습니다.");

        mav.setViewName("login");
        
        return mav;// 작성이 완료된 후, 목록페이지로 리턴

	}

	//login
	@RequestMapping(value="/login", method = RequestMethod.GET) //로그인 폼을 띄워
	public ModelAndView loginForm() throws Exception {

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("no_login"," ");

		mav.setViewName("login");

		return mav;
	}
	
	
	/**
	 * Authentication Code를 전달 받는 엔드포인트
	 * @throws Exception 
	 **/
	@GetMapping("/login/google/auth")
	public ModelAndView googleAuth( ModelAndView mav,HttpServletRequest request, @RequestParam(value = "code") String authCode)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		//HTTP Request를 위한 RestTemplate
		RestTemplate restTemplate = new RestTemplate();

		//Google OAuth Access Token 요청을 위한 파라미터 세팅
		GoogleOAuthRequest googleOAuthRequestParam = new GoogleOAuthRequest(clientId,clientSecret,authCode,"http://localhost:8080/onepage/login/google/auth","authorization_code");


		//JSON 파싱을 위한 기본값 세팅
		//요청시 파라미터는 스네이크 케이스로 세팅되므로 Object mapper에 미리 설정해준다.
		ObjectMapper mapper = new ObjectMapper();
		mapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);
		mapper.setSerializationInclusion(Include.NON_NULL);

		//AccessToken 발급 요청
		ResponseEntity<String> resultEntity = restTemplate.postForEntity(GOOGLE_TOKEN_BASE_URL, googleOAuthRequestParam, String.class);

		//Token Request
		GoogleOAuthResponse result = mapper.readValue(resultEntity.getBody(), new TypeReference<GoogleOAuthResponse>() {
		});

		//ID Token만 추출 (사용자의 정보는  jwt로 인코딩 되어있다)
		String jwtToken = result.getIdToken();
		String requestUrl = UriComponentsBuilder.fromHttpUrl("https://oauth2.googleapis.com/tokeninfo")
		.queryParam("id_token", jwtToken).toUriString();
		
		String resultJson = restTemplate.getForObject(requestUrl, String.class);
		
		Map<String,String> userInfo = mapper.readValue(resultJson, new TypeReference<Map<String, String>>(){});
		
		
		User user = new User();
		user.setEmail_address(userInfo.get("email"));
		user.setName(userInfo.get("name"));
		
		
		if(loginService.socialCheck(user)==0) {//구글 로그인시 회원가입 전일 때
			
			loginService.joinSocialUser(user);
		}
		

		//로그인이 성공하면 User 객체를 반환한다.
		User one=loginService.socialLogin(user);
		System.out.println("one:"+one);
		session.setAttribute("Name", one.getName()); //세션에 login이란 이름으로 User 객체를 저장한다.
		session.setAttribute("ID", one.getId()); //세션에 login이란 이름으로 User 객체를 저장한다.
		session.setAttribute("email", one.getEmail_address());
		session.setAttribute("admin", one.getAdmin());
		session.setAttribute("login", one);
		
		mav.addObject("user", one);
		mav.addObject("token", result.getAccessToken());
		mav.setViewName("home");
		
		return mav;

	}
	
	/**
	 * 토큰 무효화 
	 **/
	@GetMapping("/login/google/revoke/token")
	@ResponseBody
	public Map<String, String> revokeToken(@RequestParam(value = "token") String token) throws JsonProcessingException {

		Map<String, String> result = new HashMap<String,String>();
		RestTemplate restTemplate = new RestTemplate();
		final String requestUrl = UriComponentsBuilder.fromHttpUrl(GOOGLE_REVOKE_TOKEN_BASE_URL)
				.queryParam("token", token).toUriString();
		
		String resultJson = restTemplate.postForObject(requestUrl, null, String.class);
		result.put("result", "success");
		result.put("resultJson", resultJson);

		return result;

	}
	

	//아이디 중복 체크
	@RequestMapping(value="login/gidCheck",method=RequestMethod.POST)
	@ResponseBody
	public int idCheck(@RequestParam("user_id") String user_id) throws Exception {
		int isOk=loginService.userIdCheck(user_id);
		return isOk;
	}

	//로그인 성공 or 실패
	@RequestMapping(value="login/loginProcess",method=RequestMethod.POST)
	public ModelAndView loginProcess(HttpSession session,User user) throws Exception {
		ModelAndView mav;

		if(session.getAttribute("login")!=null) { //기존에 login이라는 세션 값이 존재할 경
			session. removeAttribute("login"); //기존 값을 제거한
		}

		//로그인이 성공하면 User 객체를 반환한다.
		User one=loginService.login(user);

		if(one!=null) {//로그인 성공
			
			session.setAttribute("Name", one.getName()); //세션에 login이란 이름으로 User 객체를 저장한다.
			session.setAttribute("ID", one.getId()); //세션에 login이란 이름으로 User 객체를 저장한다.
			session.setAttribute("email", one.getEmail_address());
			session.setAttribute("phone", one.getPhone_number());
			session.setAttribute("admin", one.getAdmin());
			session.setAttribute("login", one);
			
			mav=new ModelAndView("home");
		}
		else {
			mav=new ModelAndView("login");
			mav.addObject("no_login","아이디 또는 비밀번호를 다시 입력해주세요.");
		}
		System.out.println("loginProcess controller end");
		return mav;
	}

	@RequestMapping(value = "login/redirectUrl")
	  public ModelAndView googleUrl(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		 String rootPath = request.getRequestURL().toString().replace(request.getRequestURI(),"")+request.getContextPath();
	      
	      beforeUrl = request.getHeader("Referer");
		String redirectUrl = "redirect:https://accounts.google.com/o/oauth2/v2/auth?"
				+ "client_id=301548670560-kv6g6e8emg8kuac082ib4q4eah7hp4qu.apps.googleusercontent.com"
				+ "&redirect_uri="+rootPath+"/login/google/auth"
				+ "&response_type=code"
				+ "&scope=email%20profile%20openid"
				+ "&access_type=offline";
		
		mav.setViewName(redirectUrl);
		return mav;
	}
	
	//로그아웃
	@RequestMapping(value="login/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		//session.removeAttribute("login");
		
        return new ModelAndView("home");
	}
	
	//session check controller
	@RequestMapping(value="/sessionCheck", method= {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public int sessionCheck(HttpSession session, HttpServletRequest request) {
		int sessionID = (Integer) session.getAttribute("ID");
		System.out.println("session controller : " + sessionID);
	    return sessionID;
	}
}