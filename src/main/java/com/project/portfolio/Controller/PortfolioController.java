package com.project.portfolio.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.portfolio.DTO.Category_Item;
import com.project.portfolio.DTO.Data;
import com.project.portfolio.DTO.Item;
import com.project.portfolio.DTO.Option;
import com.project.portfolio.DTO.Portfolio;
import com.project.portfolio.DTO.Portfolio2;
import com.project.portfolio.DTO.Template;
import com.project.portfolio.DTO.dataKey;
import com.project.portfolio.Service.PortfolioService;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;


@RestController
@RequestMapping(value = "/") // 주소 패턴

public class PortfolioController<GoogleConnectionFactory, OAuth2Parameters> {

	@Autowired
	private PortfolioService portfolioService;

	//마이페이지 가기
	@RequestMapping(value = "/myPage") // GET 방식으로 페이지 호출

	  public ModelAndView GoMypage(HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		int user_id=(Integer) session.getAttribute("ID");
		
		List<Portfolio> port_list =portfolioService.portfolioList(user_id);
		System.out.println(port_list);
		
		mav.addObject("portfolio_list",port_list);
		
        mav.setViewName("myPage");
        return mav;
	}
	
	//고른 포트폴리오로 이동
		@RequestMapping(value = "/checkPortfolio" ,method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (POST)
		public ModelAndView GoMyportfolio(HttpSession session,HttpServletRequest request) throws Exception {
			ModelAndView mav = new ModelAndView();
			int portfolio_ID=Integer.parseInt(request.getParameter("select_portID"));
					
			String template_name=portfolioService.getCheckTemplateID(portfolio_ID);
			List<Data> list=portfolioService.getCheckPortfolio(portfolio_ID);
					
			String content[];
					
			JSONArray jArray2 = new JSONArray();
			try {
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
			
			System.out.println(jArray2);
			mav.addObject("data_list", jArray2);
			mav.addObject("temName", template_name);
			mav.addObject("portfolio_ID",portfolio_ID);
			mav.setViewName("checkPortfolio");
			
			return mav;
		}
		
	
	//해당 포트폴리오 삭제
	@RequestMapping(value = "/deletePortfolio" ,method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (POST)
	public ModelAndView deleteMyPortfolio(HttpSession session,HttpServletRequest request) throws Exception {
			
		int portfolio_ID=Integer.parseInt(request.getParameter("select_portID"));
		portfolioService.deletePortfolio(portfolio_ID);
					
		return new ModelAndView("redirect:/myPage");
	}
	
	
	
	//포트폴리오 제작 - step1~step7
//	//step1. 포트폴리오 이름 저장 -> 만드는 페이지로 넘어감
//	@RequestMapping(value= "/make_portfolio", method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (POST)
//  	public ModelAndView setMyPortfolio(HttpServletRequest request,HttpSession session, RedirectAttributes redirectAttr) throws Exception {
//
//        //포트폴리오(portfolio_id) 생성
//        Portfolio port= new Portfolio();
//        int template_id=0;
//        String portfolio_name=request.getParameter("portfolio_name");
//        port.setUser_id((Integer) session.getAttribute("ID"));
//        
//        port.setTemplate_id(template_id);
//        port.setTitle(portfolio_name);
//       
//        portfolioService.portfolio_ID(port);
//       
//        int port_id=port.getId();
//        
//        
//        redirectAttr.addFlashAttribute("portfolio_name",portfolio_name);
//        redirectAttr.addFlashAttribute("port_id",port_id);
//        
//        p_name=portfolio_name;
//        p_id=port_id;
//        
//        return new ModelAndView("redirect:/portfolio_one");
//        
//    }
	

	//step2. 포트폴리오 항목들과 템플릿 정보 가져오기 
		@RequestMapping(value= "/portfolio_one")
	  	public ModelAndView getMyData(HttpSession session,HttpServletRequest request) throws Exception {

			ModelAndView mav = new ModelAndView();
			
			List<Category_Item> item_list = portfolioService.getCategoryItem();
			List<Template> template = portfolioService.getTemplate();
			List<Item> item_input = portfolioService.getItem();	
			List<Option> option_list = portfolioService.getOption();
			
			JSONArray jArray1 = new JSONArray();
	        try {
	        	for (int i = 0; i < item_list.size() ; i++) {   
	        		JSONObject ob =new JSONObject();
	        		ob.put("category_id", item_list.get(i).getCategory_id());
			        ob.put("category_name", item_list.get(i).getCategory_name());
		            ob.put("item_id", item_list.get(i).getItem_id());
		            ob.put("item_name", item_list.get(i).getItem_name());
		            jArray1.put(ob);
		        }
	        	System.out.println(jArray1.toString());
	        }catch(JSONException e){
	        	e.printStackTrace();
	        }
	        
	        JSONArray jArray2 = new JSONArray();
	        try {
	        	for (int i = 0; i < item_input.size() ; i++) {   
	        		JSONObject ob2 =new JSONObject();
	        		ob2.put("field_id", item_input.get(i).getField_id() );
	        		ob2.put("field_name", item_input.get(i).getField_name());
	        		ob2.put("field_type", item_input.get(i).getField_type());
	        		ob2.put("item_id", item_input.get(i).getItem_id());
	        		ob2.put("field_mark", item_input.get(i).getIsEssential());
		            jArray2.put(ob2);
		        }
	        	System.out.println(jArray2.toString());
	        }catch(JSONException e){
	        	e.printStackTrace();
	        }
	        
	        JSONArray jArray3 = new JSONArray();
	        try {
	        	for (int i = 0; i < option_list.size() ; i++) {   
	        		JSONObject ob3 =new JSONObject();
	        		ob3.put("field_id", option_list.get(i).getField_id());
	        		ob3.put("list_name", option_list.get(i).getList_name());

		            jArray3.put(ob3);
		        }
	        	System.out.println(jArray3.toString());
	        }catch(JSONException e){
	        	e.printStackTrace();
	        }
			
			//View로 보내기
	        mav.addObject("template",template);
	        mav.addObject("item_list",jArray1);
	        mav.addObject("item_input",jArray2);
	        mav.addObject("options", jArray3);
	        
			mav.setViewName("portfolio_one");
			return mav;
	    }
	
	//템플릿 선택 탭에서, 선택시 큰 이미지로 보여주게 하는 것
	@RequestMapping(value= "/tem_image", method = RequestMethod.POST)
  	public ModelAndView tem_image(HttpServletRequest request) throws Exception {

		ModelAndView mav = new ModelAndView();
		String template_html=request.getParameter("template_html");
		String url="templates/"+template_html;
		
		mav.setViewName(url);
		return mav;
    }
	
	
	//step3. 이전 데이터 불러오기 (사용자가 누른 항목만!)
		@RequestMapping(value= "/pastData", method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
		@ResponseBody
		public List<Data> pastData(HttpServletRequest request, HttpSession session) throws Exception {

			dataKey dk = new dataKey();
			dk.setUser_id((Integer) session.getAttribute("ID"));
			dk.setItem_id(Integer.parseInt(request.getParameter("item_id")));
			        
			List<Data> data = portfolioService.getData(dk);
			System.out.println(data);
				
			return data;
		}
	
	//step4. 새 데이터 추가하기 
		@RequestMapping(value= "/dataInput", method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
		@ResponseBody
		public List<Item> newData(HttpServletRequest request, HttpSession session) throws Exception {
			System.out.println("step4 controller: ");
				
			int item_id=Integer.parseInt(request.getParameter("item_id"));
			List<Item> item_input = portfolioService.getItemBox(item_id);
			System.out.println(item_input.toString());
			
			System.out.println("item_input: "+item_input);
		    return item_input;
		}
		
	
	//step4. 새 데이터 추가하기 
//	@RequestMapping(value= "/newData", method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
//	@ResponseBody
//	public List<Item> newData(HttpServletRequest request, HttpSession session) throws Exception {
//			
//		int item_id=Integer.parseInt(request.getParameter("item_id"));
//		
//		
//		List<Item> item_input = portfolioService.getItem(item_id);
//			
//		System.out.println("item_input: "+item_input);
//	    return item_input;
//	}
		
		
	//항목 중에 select하는 항목에 옵션 제공
	@RequestMapping(value= "/optionList", method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
	@ResponseBody
	public List<Option> getOptionList(HttpServletRequest request, HttpSession session) throws Exception {
			
		int field_id=Integer.parseInt(request.getParameter("field_id"));
		System.out.println("field_id: "+field_id);
			
		List<Option> option_list = portfolioService.getOption();
			
		System.out.println("option_list: "+option_list);
			
		return option_list;
	}		
	
	//step5.미리보기 
		@RequestMapping(value= "/preview", method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
		@ResponseBody 
		public ModelAndView showPreview(HttpServletRequest request) throws Exception {
			ModelAndView mav = new ModelAndView();
			
			System.out.println("preview!!");

		    String template_name  = request.getParameter("template_html");
		    String template_color  = request.getParameter("template_color");
		    String template_font  = request.getParameter("template_font");
		    
		    String []item_id = request.getParameterValues("item_id");
		    String []content1 = request.getParameterValues("content1");
		    String []content2 = request.getParameterValues("content2");
		    String []content3 = request.getParameterValues("content3");
		    String []content4 = request.getParameterValues("content4");
		    String []content5 = request.getParameterValues("content5");
		    String []content6 = request.getParameterValues("content6");
			
		    String[]content;
				
			JSONArray jArray2 = new JSONArray();
		    try {
		    	for (int i = 0; i < item_id.length ; i++) {   
			    	JSONObject ob =new JSONObject();
			        content=new String[6];
			        
			        ob.put("item_id", item_id[i]);
			        ob.put("data_no", portfolioService.getData_no(item_id[i]));
			        
			        content[0]=content1[i];
			        content[1]=content2[i];
			        content[2]=content3[i];
			        content[3]=content4[i];
			        content[4]=content5[i];
			        content[5]=content6[i];
			            
			        ob.put("content", content);
			            
			        jArray2.put(ob);
			        
			    }
		        System.out.println(jArray2.toString());
		    }catch(JSONException e){
		        e.printStackTrace();
		    }
		    
		    String url="templates/"+template_name;
			mav.addObject("data_list", jArray2);
			mav.addObject("template_color", template_color);
			mav.addObject("template_font", template_font);
			mav.setViewName(url);
			
			return mav;
			        
		}

		//step6. 데이터 DB에 포트폴리오 정보 넣기
		@RequestMapping(value= "/portfolio_two", method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
		public ModelAndView putMyData(HttpServletRequest request, HttpSession session,RedirectAttributes redirectAttr, @RequestParam("file1") MultipartFile file) throws Exception {
//			, @RequestParam("file1") MultipartFile file
			System.out.println("putMyData controller! ");
		    String template_id  = request.getParameter("template_id");
		    String template_name  = request.getParameter("template_html");
		    String portfolio_name  = request.getParameter("portfolio_name");
		    String portfolio_public  = request.getParameter("portfolio_public");
		    String photo_name  = request.getParameter("photo_name");
		    String template_color  = request.getParameter("template_color");
		    String template_font  = request.getParameter("template_font");
		    
		    //포트폴리오(portfolio_id) 생성
	        Portfolio port= new Portfolio();
	       
//	        String portfolio_name=request.getParameter("portfolio_name");
	        port.setUser_id((Integer) session.getAttribute("ID"));
	        port.setTitle(portfolio_name);
	        port.setIsPublic(Integer.parseInt(portfolio_public));
	        port.setTemplate_id(Integer.parseInt(template_id));
	        port.setColor(template_color);
	        port.setFont(template_font);
	        
	        portfolioService.portfolio_ID(port);
	       
	        int portfolio_id = port.getId();
	        
	        System.out.println("포트폴리오 아이디 : " +portfolio_id);
			
	      //file 데이터 저장 
			if(photo_name == null) {
				System.out.println("file : " + file);
				
				String url = null;
				
				try {
					
					// 파일 정보
					String originFilename = file.getOriginalFilename(); //file 실제
					String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());  //file type (.jpg)
					Long size = file.getSize(); //file 크기 
					String saveFileName = portfolio_id+"_userImg";   // 서버에서 저장 할 파일 이름
					String SAVE_PATH = request.getSession().getServletContext().getRealPath("/") + "resources/user_photo/"; // 저장할 경로 (서버 저장)
					String DBFileName = saveFileName + extName;
					
					// 파일 정보 test 출력 
//					System.out.println("originFilename : " + originFilename);
//					System.out.println("extensionName : " + extName); 
//					System.out.println("size : " + size);
//					System.out.println("saveFileName : " + saveFileName);
//					System.out.println("저장 경로 : " + SAVE_PATH);

					//이미지 파일 서버에 저장 
					byte[] data = file.getBytes();
					FileOutputStream fos = new FileOutputStream(SAVE_PATH + DBFileName);
					fos.write(data);
					fos.close();
					
					//이미지 파일명 DB에 저장 
					Data photoInfo= new Data();
					photoInfo.setPortfolio_id(portfolio_id);
					photoInfo.setItem_id(1);
					photoInfo.setContent1(DBFileName);
					portfolioService.savePhoto(photoInfo);
					System.out.println("저장 완료!");

				}
				catch (IOException e) {
					// 원래라면 RuntimeException 을 상속받은 예외가 처리되어야 하지만
					// 편의상 RuntimeException을 던진다.
					// throw new FileUploadException();	
					throw new RuntimeException(e);
				}
					
			}else {
				System.out.println("file X : " + photo_name);
				
				Data photoInfo= new Data();
				photoInfo.setPortfolio_id(portfolio_id);
				photoInfo.setItem_id(1);
				photoInfo.setContent1(photo_name);
				portfolioService.savePhoto(photoInfo);
				System.out.println("저장 완료!");
			}
			
			
			//file 제외 portfolio 데이터 저장
			String item_id[] =  request.getParameterValues("add_itemID");
		    String content1[]  = request.getParameterValues("content1");
		    String content2[]  = request.getParameterValues("content2");
		    String content3[]  = request.getParameterValues("content3");
		    String content4[]  = request.getParameterValues("content4");
		    String content5[]  = request.getParameterValues("content5");
		    String content6[]  = request.getParameterValues("content6");
		    
//		    System.out.println("아이템 개수:" +item_id.length);
//	        System.out.println("content1 개수:" +content1.length);
//		    System.out.println("content2 개수:" +content2.length);
//		    System.out.println("content3 개수:" +content3.length);
//		    System.out.println("content4 개수:" +content4.length);
//		    System.out.println("content5 개수:" +content5.length);
//		    System.out.println("content6 개수:" +content6.length);
	
		    for(int i = 0;i<item_id.length;i++) {
		    	//System.out.println("data 넣는 루프 ");
		        Data info= new Data();
		        	
			    //content 저장
		        info.setContent1(content1[i]);
			    //System.out.println("c1!!!" );
			    info.setContent2(content2[i]);
			    //System.out.println("c2!!!" );

			    info.setContent3(content3[i]);
			    //System.out.println("c3!!!" );
			    info.setContent4(content4[i]);
			    //System.out.println("c4!!!" );
			    info.setContent5(content5[i]);
			    //System.out.println("c5!!!" );
			    info.setContent6(content6[i]);
			    //System.out.println("c6!!!" );
			        	
			    info.setUser_id((Integer) session.getAttribute("ID"));
			    info.setPortfolio_id(portfolio_id);
			    info.setItem_id(Integer.parseInt(item_id[i]));
			    
			    //System.out.println("info set!!!" );
			    //System.out.println(info.toString());
			    portfolioService.inData(info); // DB 저 서비스 호출
			    //System.out.println(info.toString());
		    }	
	    
		    System.out.println("step6 clear!");
		    System.out.println(template_color);
		    System.out.println(template_font);
		    
		    
		    // 다음 컨트롤러로 전송  
		    redirectAttr.addFlashAttribute("template_id",Integer.parseInt(template_id));
		    redirectAttr.addFlashAttribute("template_name",template_name);
		    redirectAttr.addFlashAttribute("portfolio_id",portfolio_id);
		    redirectAttr.addFlashAttribute("template_color",template_color);
		    redirectAttr.addFlashAttribute("template_font",template_font);

			return new ModelAndView("redirect:/call_data");
		}
		
		//portfolio 수정하기  
		@RequestMapping(value= "/editPortfolio")
	  	public ModelAndView editPortfolio (HttpSession session,HttpServletRequest request) throws Exception {
			
			System.out.println("editPortfolio controller! ");
			
		    String portID  = request.getParameter("select_portID");
		    String temName = request.getParameter("temName");
		    Portfolio portInfo = portfolioService.getPortInfo(Integer.parseInt(portID));
		    
		    	List<Data> data_list = portfolioService.callData(Integer.parseInt(portID));
			List<Category_Item> item_list = portfolioService.getCategoryItem();
			List<Template> template = portfolioService.getTemplate();
			List<Item> item_input = portfolioService.getItem();	
			List<Option> option_list = portfolioService.getOption();
			
			//template 명 
			JSONArray jArrayTem = new JSONArray();
			try {

	        		JSONObject ob =new JSONObject();
	        		ob.put("tem_name", temName);
	        		ob.put("tem_id", portInfo.getTemplate_id());
	        		ob.put("port_title", portInfo.getTitle());
	        		ob.put("port_public", portInfo.getIsPublic());
	        		jArrayTem.put(ob);
		        
	        	System.out.println(jArrayTem.toString());
	        }catch(JSONException e){
	        	e.printStackTrace();
	        }
	        
			
			
			String content[];
			JSONArray jArray0 = new JSONArray();
		    try {
		    	for (int i = 0; i < data_list.size() ; i++) {   
			    	JSONObject ob =new JSONObject();
			        content=new String[6];
			        ob.put("item_id", data_list.get(i).getItem_id());
			        ob.put("item_name", data_list.get(i).getItem_name());
			        ob.put("data_no", data_list.get(i).getData_no());
			        
			        content[0]=data_list.get(i).getContent1();
			        content[1]=data_list.get(i).getContent2();
			        content[2]=data_list.get(i).getContent3();
			        content[3]=data_list.get(i).getContent4();
			        content[4]=data_list.get(i).getContent5();
			        content[5]=data_list.get(i).getContent6();
			            
			        ob.put("content", content);
			            
			        jArray0.put(ob);
			        
			    }
		        System.out.println(jArray0.toString());
		    }catch(JSONException e){
		        e.printStackTrace();
		    }
			
			
			
			//category 항목 json 처리 
			JSONArray jArray1 = new JSONArray();
	        try {
	        	for (int i = 0; i < item_list.size() ; i++) {   
	        		JSONObject ob =new JSONObject();
	        		ob.put("category_id", item_list.get(i).getCategory_id());
			        ob.put("category_name", item_list.get(i).getCategory_name());
		            ob.put("item_id", item_list.get(i).getItem_id());
		            ob.put("item_name", item_list.get(i).getItem_name());
		            jArray1.put(ob);
		        }
	        	System.out.println(jArray1.toString());
	        }catch(JSONException e){
	        	e.printStackTrace();
	        }
	        
	        //field 정보 json 처리 
	        JSONArray jArray2 = new JSONArray();
	        try {
	        	for (int i = 0; i < item_input.size() ; i++) {   
	        		JSONObject ob2 =new JSONObject();
	        		ob2.put("field_id", item_input.get(i).getField_id() );
	        		ob2.put("field_name", item_input.get(i).getField_name());
	        		ob2.put("field_type", item_input.get(i).getField_type());
	        		ob2.put("item_id", item_input.get(i).getItem_id());
	        		ob2.put("field_mark", item_input.get(i).getIsEssential());
		            jArray2.put(ob2);
		        }
	        	System.out.println(jArray2.toString());
	        }catch(JSONException e){
	        	e.printStackTrace();
	        }
	        
	        //option 내용 json 처리 
	        JSONArray jArray3 = new JSONArray();
	        try {
	        	for (int i = 0; i < option_list.size() ; i++) {   
	        		JSONObject ob3 =new JSONObject();
	        		ob3.put("field_id", option_list.get(i).getField_id());
	        		ob3.put("list_name", option_list.get(i).getList_name());

		            jArray3.put(ob3);
		        }
	        	System.out.println(jArray3.toString());
	        }catch(JSONException e){
	        	e.printStackTrace();
	        }
			
			//View로 보내기
	        ModelAndView mav = new ModelAndView();
	        mav.addObject("template",template);
	        mav.addObject("portfolioID",Integer.parseInt(portID));
	        mav.addObject("portfolioInfo",jArrayTem);
	        
	        mav.addObject("data_list",jArray0);
	        mav.addObject("item_list",jArray1);
	        mav.addObject("item_input",jArray2);
	        mav.addObject("options", jArray3);
	        
			mav.setViewName("portfolio_three");
			
			System.out.println("수정 페이지 로드 완료");
			return mav;
	    }
		
		
		//수정 내용 업데이트
		@RequestMapping(value= "/portfolio_edit", method = RequestMethod.POST) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
		public ModelAndView saveEditData(HttpServletRequest request, HttpSession session,RedirectAttributes redirectAttr, @RequestParam("file1") MultipartFile file) throws Exception {

			System.out.println("saveEditData controller! ");
			
		    String template_id  = request.getParameter("template_id");
		    String template_name  = request.getParameter("template_html");
		    String portfolio_name  = request.getParameter("portfolio_name");
		    String portfolio_public  = request.getParameter("portfolio_public");
		    String photo_name  = request.getParameter("photo_name");
		    String ex_portID = request.getParameter("portfolio_id");
		    int portfolio_id = Integer.parseInt(ex_portID);
		    
		    
		    //포트폴리오 정보 update
		    	
	        Portfolio port= new Portfolio();
	        port.setId(portfolio_id);
	        port.setTitle(portfolio_name);
	        port.setIsPublic(Integer.parseInt(portfolio_public));
	        port.setTemplate_id(Integer.parseInt(template_id));
	        System.out.println(port.toString());
	        
	        portfolioService.updatePortfolio(port); //portfolio 정보 update
	        portfolioService.deleteDetail(portfolio_id); //detail 정보 delete
	        
	      
	        
			
			//file 데이터 저장 
			if(photo_name == null) {
				System.out.println("file : " + file);
				String url = null;
				
				try {
					
					// 파일 정보
					String originFilename = file.getOriginalFilename(); //file 실제
					String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());  //file type (.jpg)
					Long size = file.getSize(); //file 크기 
					String saveFileName = portfolio_id+"_userImg";   // 서버에서 저장 할 파일 이름
					String SAVE_PATH = request.getSession().getServletContext().getRealPath("/") + "resources/user_photo/"; // 저장할 경로 (서버 저장)
					String DBFileName = saveFileName + extName;
					
					// 파일 정보 test 출력 
//					System.out.println("originFilename : " + originFilename);
//					System.out.println("extensionName : " + extName); 
//					System.out.println("size : " + size);
//					System.out.println("saveFileName : " + saveFileName);
//					System.out.println("저장 경로 : " + SAVE_PATH);

					//이미지 파일 서버에 저장 
					byte[] data = file.getBytes();
					FileOutputStream fos = new FileOutputStream(SAVE_PATH + DBFileName);
					fos.write(data);
					fos.close();
					
					//이미지 파일명 DB에 저장 
					Data photoInfo= new Data();
					photoInfo.setPortfolio_id(portfolio_id);
					photoInfo.setItem_id(1);
					photoInfo.setContent1(DBFileName);
					portfolioService.savePhoto(photoInfo);
					System.out.println("저장 완료!");

				}
				catch (IOException e) {
					// 원래라면 RuntimeException 을 상속받은 예외가 처리되어야 하지만
					// 편의상 RuntimeException을 던진다.
					// throw new FileUploadException();	
					throw new RuntimeException(e);
				}
					
			}else {
				System.out.println("file X : " + photo_name);
				
				Data photoInfo= new Data();
				photoInfo.setPortfolio_id(portfolio_id);
				photoInfo.setItem_id(1);
				photoInfo.setContent1(photo_name);
				portfolioService.savePhoto(photoInfo);
				System.out.println(photoInfo.toString() );
				System.out.println("저장 완료!");
			}
			
			//detail 정보 삭제 과정 필요
			
			//file 제외 portfolio 데이터 저장
			String item_id[] =  request.getParameterValues("add_itemID");
		    String content1[]  = request.getParameterValues("content1");
		    String content2[]  = request.getParameterValues("content2");
		    String content3[]  = request.getParameterValues("content3");
		    String content4[]  = request.getParameterValues("content4");
		    String content5[]  = request.getParameterValues("content5");
		    String content6[]  = request.getParameterValues("content6");
		    
//		    System.out.println("아이템 개수:" +item_id.length);
//	        System.out.println("content1 개수:" +content1.length);
//		    System.out.println("content2 개수:" +content2.length);
//		    System.out.println("content3 개수:" +content3.length);
//		    System.out.println("content4 개수:" +content4.length);
//		    System.out.println("content5 개수:" +content5.length);
//		    System.out.println("content6 개수:" +content6.length);
	
		    for(int i = 0;i<item_id.length;i++) {
		    	//System.out.println("data 넣는 루프 ");
		        Data info= new Data();
		        	
			    //content 저장
		        info.setContent1(content1[i]);
			    info.setContent2(content2[i]);
			    info.setContent3(content3[i]);
			    info.setContent4(content4[i]);
			    info.setContent5(content5[i]);
			    info.setContent6(content6[i]);

			        	
			    info.setUser_id((Integer) session.getAttribute("ID"));
			    info.setPortfolio_id(portfolio_id);
			    info.setItem_id(Integer.parseInt(item_id[i]));
			    
			    portfolioService.inData(info); // DB 저장 서비스 호출
			    System.out.println(info.toString());
		    }	
	    
		    System.out.println("step6 clear!");
		    
		    
		    // 다음 컨트롤러로 전송  
		    redirectAttr.addFlashAttribute("template_id",Integer.parseInt(template_id));
		    redirectAttr.addFlashAttribute("template_name",template_name);
		    redirectAttr.addFlashAttribute("portfolio_id",portfolio_id);

			return new ModelAndView("redirect:/call_data");
		}
		
	//step7.템플릿에 데이터 뿌리기
	@RequestMapping(value= "/call_data") // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)
	 public ModelAndView callData(HttpServletRequest request, HttpSession session) throws Exception {

		ModelAndView mav = new ModelAndView();
		String template_name="";
		int portfolio_id=0;
		int template_id=0;
		String template_color="#000000";
		String template_font="Times New Roman";
			
		Map<String,?> redirectMap = RequestContextUtils.getInputFlashMap(request);
		if(redirectMap != null) {
			template_id=(Integer)redirectMap.get("template_id");
			template_name= (String)redirectMap.get("template_name");
			portfolio_id= (Integer)redirectMap.get("portfolio_id");
			template_color= (String)redirectMap.get("template_color");
			template_font= (String)redirectMap.get("template_font");
		}
		System.out.println("step7 : portfolio id: "+portfolio_id);
			
		//int isVerticle=portfolioService.isVerticle(template_id);
		
		List<Data> list = portfolioService.callData(portfolio_id);
		
		System.out.println("Get Data for template");
        System.out.println(list);

        String content[];
			
		JSONArray jArray2 = new JSONArray();
	    try {
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
	        System.out.println(jArray2.toString());
	    }catch(JSONException e){
	        e.printStackTrace();
	    }
	    
	    JSONObject template_info =new JSONObject();
	    template_info.put("template_color", template_color);
	    template_info.put("template_font", template_font);
	
	    //보여주기
		mav.addObject("temName", template_name);
		mav.addObject("data_list", jArray2);
		mav.addObject("template_font", template_info);
		mav.setViewName("portfolio_finish1");
		
//		if(template_name.equals("template1"))
//			mav.setViewName("portfolio_finish1");
//		if(template_name.equals("template2"))
//			mav.setViewName("portfolio_finish2");
		
		System.out.println("step7 clear! ");
		return mav;
	}
	
	//포트폴리오 게시판 가기
	@RequestMapping(value = "/portfolios") // GET 방식으로 페이지 호출

	public ModelAndView GoPortfolioBoard(HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
			
	    mav.setViewName("portfolios");
	    return mav;
	}

}
