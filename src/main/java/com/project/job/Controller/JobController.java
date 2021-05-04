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
	
	@RequestMapping("/form/{jobCode}") 
	public ModelAndView goToForm(RedirectAttributes redirectAttr, @PathVariable String jobCode, HttpSession session, HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		//직업 목록 가져오기
		String uri="http://openapi.work.go.kr/opi/opi/opia/jobSrch.do?authKey=WNKNNYM558VXEOK5Z53CV2VR1HJ&returnType=XML&target=JOBDTL&jobGb=1&jobCd="+jobCode+"&dtlGb=1";
		//RestTemplate 생성
		RestTemplate rest=new RestTemplate();
		//오브젝트로 결과 값 받아오기
		JobListDTO list=rest.getForObject(uri, JobListDTO.class);
		//직업 정보 리스트
		List<JobListDetail> jobList= list.getJobInfo();
//		
//		int user_id=0;
//		if(session.getAttribute("id")!=null) {
//			user_id=(Integer) session.getAttribute("id");
//		}
//		
//		int form_ID=adminDAO.getFormId(link);
//		
//		
//		if(adminDAO.getResultIdCount(form_ID,user_id)!=0) { //url로 들어왔는데 이미 신청했던 폼이라는 것이니까
//			mav.setViewName("redirect:/viewForm/"+link); //신청한거 확인하는 페이지로 가기
//			return mav;	
//		}
//		
//		List<Form> form_info = mainDao.forminfo(form_ID);
//		//form info json 처리 
//		JSONArray jArray1 = new JSONArray();
//		try {
//		    	for (int i = 0; i < form_info.size() ; i++) {   
//			    		JSONObject ob =new JSONObject();
//			        
//			        ob.put("form_name", form_info.get(i).getFormName());
//			        ob.put("form_detail", form_info.get(i).getExplanation());
//			        ob.put("form_startDate", form_info.get(i).getStartDate());
//			        ob.put("form_endDate", form_info.get(i).getEndDate());
//			            
//			        jArray1.put(ob);      
//		    }
//		        System.out.println(jArray1.toString());
//		    }catch(JSONException e){
//		        e.printStackTrace();
//		    }
//		
//		Date endDate=null;
//		Date current=new Date();
//		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.KOREAN);
//		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.KOREAN);
//		current = f.parse(fm.format(current));		
//		endDate = f.parse(fm.format(form_info.get(0).getEndDate()));		
//		
//		if(current.compareTo(endDate)>0) {
//			System.out.println("신청마감됨");
//			mav.addObject("form_info", jArray1);
//			mav.setViewName("deadLineForm");
//			return mav;
//		}
//		List<Field> field_list = mainDao.fieldList(form_ID);
//		System.out.println(field_list.toString());
//			
//		
//		//field info json 처리 
//		JSONArray jArray2 = new JSONArray();
//		try {
//		    for (int i = 0; i < field_list.size() ; i++) {   
//		    	JSONObject ob =new JSONObject();
//						        
//		        ob.put("field_id", field_list.get(i).getId());
//		        ob.put("field_name", field_list.get(i).getFieldName());
//		        ob.put("field_type", field_list.get(i).getFieldType());
//		        ob.put("field_star", field_list.get(i).getIsEssential());
//			    ob.put("field_file", field_list.get(i).getFieldName());
//						            
//				jArray2.put(ob);      
//		    }
//		    System.out.println(jArray2.toString());
//		}catch(JSONException e){
//			e.printStackTrace();
//		}
//			
//		mav.addObject("form_ID", form_ID);
//		mav.addObject("form_info", jArray1);
//		mav.addObject("field_list", jArray2);
		mav.setViewName("userFormWrite");
		
		return mav;
	}

}
