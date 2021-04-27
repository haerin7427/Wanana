package com.project.job.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.job.DTO.*;

@RestController
@RequestMapping(value = "/job")
public class JobController {
	
	//직업 목록 가져오기
	@RequestMapping(value = "/jobList") 
	@ResponseBody
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

}
