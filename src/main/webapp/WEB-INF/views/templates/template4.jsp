<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 한글 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">
	
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
    <!-- template4 css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/template4.css?ver=9">
<script>
    function getContextPath() {
        var hostIndex = location.href.indexOf( location.host ) + location.host.length;
        return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
    }
    
    $(document).ready(function () {

    	var template_info=${template_info};
   		document.body.style.setProperty("--my-font", template_info[0].template_font);
   		document.body.style.setProperty("--my-fontSize", template_info[0].template_fontSize);
   		if(template_info[0].template_color>0){
   			var color_info;
   			var whole_addr = $(location).attr('href');
		   	var addr_slice = whole_addr.split('/');
		   	var addr = addr_slice[0]+"/"+addr_slice[1]+"/"+addr_slice[2]+"/"+addr_slice[3] + "/";
		   	
   			$.ajax({ //해당 color 정보 가져오기
   				url : addr + "colorData",
   			  	type : "post",
   			  	data:{"color_id":template_info[0].template_color},
   			  	dataType : "json",
   			  	async: false,
   			  	success: function(data){
   			  		color_info = data;
   				  	console.log("color_info 불러오기 성공");
   				 	document.body.style.setProperty("--my-color", color_info.color1);
   				 	document.body.style.setProperty("--my-color2", color_info.color2);
   			  	},
   			  	error:function(request, status, error){
   					alert("code:"+request.status+"\n"+"\n"+"error:"+error);
   				}
   			});
   	   	}
   		
        
    var item= ${data_list};
    var currentPath = getContextPath();
   console.log(item);
   for(var i=0; i < item.length; i++){

	   if(item[i].item_id == 1){
			//파일의 경우
			//console.log("파일명  :" + item[i].content[0]);
			if(item[i].content[0].indexOf("data:") != -1) {
				var new_image_src = item[i].content[0];
			}else {
				var whole_addr = $(location).attr('href');
			   	var addr_slice = whole_addr.split('/');
			   	var addr = addr_slice[0]+"/"+addr_slice[1]+"/"+addr_slice[2]+"/"+addr_slice[3] + "/";
								
				var new_image_src = addr+ "resources/user_photo/" + item[i].content[0];
			}
			
			$($(".picBox").children('img')).attr("src", new_image_src);
   	}else if(item[i].item_id == 2 || item[i].item_id == 5 || item[i].item_id == 6){
       	// 자기소개(2) || 깃헙브주소(5) || 블로그주소(6) 
       	
       	if(item[i].item_id == 5 || item[i].item_id == 6)
    	   		$("#itemBox_"+item[i].item_id).append('<span><img class="contactIcon" src="'+currentPath+'/resources/images/phone2.png" alt="default_img"></span>');
      		$("#itemBox_"+item[i].item_id).append(item[i].content[0]);
       	
       }else if(item[i].item_id == 3){
           // 장점(3)
       	$("#itemBox_"+item[i].item_id).append('<div> <p>#'+item[i].content[0]+'</p> </div>');
       }else if(item[i].item_id == 4){
           // 관심분야(4)
           $("#itemBox_"+item[i].item_id).children('.fieldTitle').css("display","inline");
       	$("#itemBox_"+item[i].item_id).append('<div> <p>'+item[i].content[0]+'</p> </div>');
        }else if(item[i].item_id == 7){
            // 스킬(7)
        	$("#itemBox_"+item[i].item_id).siblings('.fieldTitle').css("display","block");
        	
        	var newInput=document.createElement('div');
        	$("#itemBox_"+item[i].item_id).append(newInput);

        	$("#itemBox_"+item[i].item_id).children(":last").append('<div class="rangeName"><p>'+item[i].content[0]+'</p></div>');
        	$("#itemBox_"+item[i].item_id).children(":last").append('<div class="rangeBox"><input type="range" min="0" max="100" value="'+item[i].content[1]+'" class="range" style="background: linear-gradient(to right,'+color_info.color1+' 0%, '+color_info.color1+' '+item[i].content[1]+'%,#EAEAEA '+(100-item[i].content[1])+'%, #EAEAEA 100%);" /></div>');
        	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[1]+'%</p></div>');
         }else if(item[i].item_id == 9){
             // 학력(9)
          	$("#itemBox_"+item[i].item_id).siblings('.fieldTitle').css("display","block");
          	var newInput=document.createElement('div');
          	$("#itemBox_"+item[i].item_id).append(newInput);

          	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[2]+' ~ '+item[i].content[3]+'</p></div>');
          	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[1]+'</p></div>');
          	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[4]+'</p></div>');
          	
           }else if(item[i].item_id == 11 || item[i].item_id == 12){
               // 자격증(11) || 수상내역(12)
              	$("#itemBox_"+item[i].item_id).siblings('.fieldTitle').css("display","block");
              	var newInput=document.createElement('div');
              	$("#itemBox_"+item[i].item_id).append(newInput);

              	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[1]+'</p></div>');
              	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[0]+'</p></div>');
              	if(item[i].content[2] != null && item[i].content[2] != "")
              		$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[2]+'</p></div>');
               }else if(item[i].item_id == 10){
                       // 나의 활동(10)
                       $("#itemBox_"+item[i].item_id).siblings('.fieldTitle').css("display","block");
                       var newInput=document.createElement('div');
                    	$("#itemBox_"+item[i].item_id).append(newInput);

                      	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[1]+'</p></div>');
                      	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[0]+'</p></div>');
                      	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[2]+' ~ '+item[i].content[3]+'</p></div>');
                      	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[4]+'</p></div>');
                      	
                       }else if(item[i].item_id == 8){
                           // 프로젝트 경험(8)
                           $("#itemBox_"+item[i].item_id).siblings('.fieldTitle').css("display","block");
                           var newInput=document.createElement('div');
                           $("#itemBox_"+item[i].item_id).append(newInput);
                        	                 
                          	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[0]+'</p></div>');
                          	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[1]+' ~ '+item[i].content[2]+'</p></div>');

                          	if(item[i].content[3] !=null && item[i].content[3] != "")
                          		$("#itemBox_"+item[i].item_id).children(":last").append('<div style="height:0px"><a href="'+item[i].content[3]+'"><img class="urlIcon" src="'+currentPath+'/resources/images/phone2.png" alt="default_img"></a></div>');
                          	else
                          		$("#itemBox_"+item[i].item_id).children(":last").append('<div style="margin-bottom: 6%;"></div>');
                      		
                       		$("#itemBox_"+item[i].item_id).children(":last").append('<div class="project_skill"></div>');
                          	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[5]+'</p></div>');

                          var tools = item[i].content[4];
                          tools = tools.split("$");
                          	
                          	for(var a = 0; a < tools.length-1 ; a++)
                          			$("#itemBox_"+item[i].item_id).children(":last").children(".project_skill").append('<div><p>'+tools[a]+'</p></div>');
                          	
                           }


   }
    


	
    });//document.ready end

    </script>
</head>
<body>
<div class="wrap" style="display: flex;justify-content: center;">
    <!--전체 body-->
    <div class="container">
        <!--div1(left box)-->
        <div class="top">
            <!-- 개인정보, 관심분야, 장점, 자기소개 -->
            <div class="myInfo">
                <div class="myInfo_upper">
                    <!-- 사진 div -->
                    <div class="picBox">
                        <img src="https://i.ibb.co/1J8zMMB/default-userpic.png">
                    </div>
                    <!-- 개인정보 div -->
                    <div class="infoBox">
                    	<c:set var="userInfo" value='<%=request.getAttribute("userInfo")%>' />
                        <!-- 이름 -->
                        <div class="name"> 
                            <div><h3>${userInfo.name}</h3></div>
                        </div>
                        <!-- contact -->
                        <div class="contact">
                            <div><p><span><img class="contactIcon" src="<%=request.getContextPath()%>/resources/images/phone2.png" alt="default_img"></span>서울특별시</p></div>
                            <div><p id='itemBox_5'></p></div>
                            <div><p id='itemBox_6'></p></div>
                            <div><p><span><img class="contactIcon" src="<%=request.getContextPath()%>/resources/images/phone2.png" alt="default_img"></span>${userInfo.email_address}</p></div>
                            <div><p><span><img class="contactIcon" src="<%=request.getContextPath()%>/resources/images/phone2.png" alt="default_img"></span>${userInfo.phone_number}</p></div>
                        </div>
                    </div>
                 
                </div>
                <!-- 관심분야,장점,자기소개 -->
                <div class="myInfo_under">
                    <!-- 관심분야 -->
                    <div id='itemBox_4' class="interest" >
                        <h6 class='fieldTitle'>관심분야</h6>
                      
                    </div>
                    <div class="graduation">
                    <h6 class='fieldTitle'>GRADUATION</h6>
                    <div id='itemBox_9' class="graduation_content">
                      
                    </div>
                </div>
                  
                </div>
            </div>
            <div class="myInfo2">
              <div class="skill">
                    <h6 class='fieldTitle'>SKILL</h6>
                    <div id='itemBox_7'  class="skill_content">
                  
                    </div>
                </div>
                <div id='itemBox_3' class="advantage">
                    
                    </div>
                    <div class="introduce">
                        <div>
                        <p id='itemBox_2'></p>
                        </div>
                    </div>
            
            </div>
            
    

        </div>
        
        <div class="bottom">
           <div class="bottomLeft">
           <!-- activity div -->
           <div class="activity">
                <h6 class='fieldTitle'>CAREER / ACTIVITY</h6>
                <div id='itemBox_10' class="activity_content">
                    
                </div>
            </div>
      
               <div class="caBox">
                    <div class="ceritificate">
                        <h6 class='fieldTitle'>CERITIFICATE</h6>
                        <div id='itemBox_11'  class="ceritificate_content">
                           
                        </div>
                    </div>
                    <div class="award">
                        <h6 class='fieldTitle'>AWARD</h6>
                        <div id='itemBox_12'  class="award_content">
                            
                        </div>
                    </div>
                </div>
            
           </div>
	        <div class="bottomRight">
	        		<!-- project div -->
	        <div class="project">
                <h6 class='fieldTitle'>PROJECT</h6>
                <div  id='itemBox_8' class="project_content">
                </div>
            </div>
           </div>
        </div>
    <!-- <!—/ 전체 body —> -->
    </div> 
    
</div>
</body>
</html>