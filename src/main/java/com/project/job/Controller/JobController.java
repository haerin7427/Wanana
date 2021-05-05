package com.project.job.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.job.DTO.*;

@RestController
@RequestMapping(value = "/job")
public class JobController {
	
	//직업 목록 가져오기
	@RequestMapping(value = "/jobList") 
	public List<JobListDetail> getJobList (HttpSession session, HttpServletRequest request) throws Exception {
		
		//직업 목록 가져오기
		String uri="http://openapi.work.go.kr/opi/opi/opia/jobSrch.do?authKey=WNKNNYM558VXEOK5Z53CV2VR1HJ&returnType=XML&target=JOBCD";
		//RestTemplate 생성
		RestTemplate rest=new RestTemplate();
		//오브젝트로 결과 값 받아오기
		JobListDTO list=rest.getForObject(uri, JobListDTO.class);
		//직업 정보 리스트
		List<JobListDetail> jobList= list.getJobInfo();
		return jobList;
	}
	
	@RequestMapping("/jobDetail/{jobCode}") 
	public ModelAndView goToDetail(RedirectAttributes redirectAttr, @PathVariable String jobCode, HttpSession session, HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("jobCode", jobCode);
		mav.setViewName("recruit_detail");
		
		return mav;
	}
	
	@RequestMapping("/jobDetail/{jobCode}/one") 
	@ResponseBody
	public JobDetailOne goToDetailOne(RedirectAttributes redirectAttr, @PathVariable String jobCode, HttpSession session, HttpServletRequest request) throws Exception {
		
		//직업 목록 가져오기
		String uri="http://openapi.work.go.kr/opi/opi/opia/jobSrch.do?authKey=WNKNNYM558VXEOK5Z53CV2VR1HJ&returnType=XML&target=JOBDTL&jobGb=1&jobCd="+jobCode+"&dtlGb=1";
		//RestTemplate 생성
		RestTemplate rest=new RestTemplate();
		//오브젝트로 결과 값 받아오기
		JobDetailOne list=rest.getForObject(uri, JobDetailOne.class);
		
		ObjectMapper mapper=new ObjectMapper();
		String jArray=mapper.writeValueAsString(list);
		System.out.println(jArray);
		
		return list;
	}
	
	@RequestMapping("/jobDetail/{jobCode}/two") 
	@ResponseBody
	public JobDetailTwo goToDetailTwo(RedirectAttributes redirectAttr, @PathVariable String jobCode, HttpSession session, HttpServletRequest request) throws Exception {
		
		//직업 목록 가져오기
		String uri="http://openapi.work.go.kr/opi/opi/opia/jobSrch.do?authKey=WNKNNYM558VXEOK5Z53CV2VR1HJ&returnType=XML&target=JOBDTL&jobGb=1&jobCd="+jobCode+"&dtlGb=2";
		//RestTemplate 생성
		RestTemplate rest=new RestTemplate();
		//오브젝트로 결과 값 받아오기
		JobDetailTwo list=rest.getForObject(uri, JobDetailTwo.class);
	
		ObjectMapper mapper=new ObjectMapper();
		String jArray=mapper.writeValueAsString(list);
		System.out.println(jArray);
		
		return list;
	}
	
	@RequestMapping("/jobDetail/{jobCode}/three") 
	@ResponseBody
	public JobDetailThree goToDetailThree(RedirectAttributes redirectAttr, @PathVariable String jobCode, HttpSession session, HttpServletRequest request) throws Exception {
		
		//직업 목록 가져오기
		String uri="http://openapi.work.go.kr/opi/opi/opia/jobSrch.do?authKey=WNKNNYM558VXEOK5Z53CV2VR1HJ&returnType=XML&target=JOBDTL&jobGb=1&jobCd="+jobCode+"&dtlGb=3";
		//RestTemplate 생성
		RestTemplate rest=new RestTemplate();
		//오브젝트로 결과 값 받아오기
		JobDetailThree list=rest.getForObject(uri, JobDetailThree.class);
	
		ObjectMapper mapper=new ObjectMapper();
		String jArray=mapper.writeValueAsString(list);
		System.out.println(jArray);
		
		return list;
	}

	@RequestMapping("/jobDetail/{jobCode}/four") 
	@ResponseBody
	public JobDetailFour goToDetailFour(RedirectAttributes redirectAttr, @PathVariable String jobCode, HttpSession session, HttpServletRequest request) throws Exception {
		
		//직업 목록 가져오기
		String uri="http://openapi.work.go.kr/opi/opi/opia/jobSrch.do?authKey=WNKNNYM558VXEOK5Z53CV2VR1HJ&returnType=XML&target=JOBDTL&jobGb=1&jobCd="+jobCode+"&dtlGb=4";
		//RestTemplate 생성
		RestTemplate rest=new RestTemplate();
		//오브젝트로 결과 값 받아오기
		JobDetailFour list=rest.getForObject(uri, JobDetailFour.class);
	
		ObjectMapper mapper=new ObjectMapper();
		String jArray=mapper.writeValueAsString(list);
		System.out.println(jArray);
		
		return list;
	}
}
