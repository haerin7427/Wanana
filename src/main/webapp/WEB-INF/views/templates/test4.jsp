<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 한글 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">
	<script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/easyPieChart.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
    
    <!-- template3 css -->
    <title>portfolio</title>
    <style>
    @charset "UTF-8";



.name div h3 {
    font-size: 40px;
    margin: 0;
    margin-bottom: 5%;
}
h6{
  font-size:calc(1.6*var(--my-fontSize));
  margin:0;
  font-weight:900;
}
h6:not(.interest>h6){
  margin:0;
  color : #FDCBCB;
  margin-bottom: 3%;
}
.picBox img{
  margin:5%;
  width: 120px;
    height: 130px;
}
 .wrap .container {
			position: relative;
			width: 570px;/* 2480 */
			height: 877px;/* 3508 */
			background-color: white;
      border: 1px solid black;
			font-family:var(--my-font);
      padding: 2% 1%;
}
.top{
  height:30%;
border-bottom: 1px solid #c7c2c2;
}
.myInfo2{
 float: left;
    position: relative;
    display: block;
    height: auto;
    width: 47%;
    margin-left: 2%;
}

.bottom{
margin-top: 3%;
  /* position:absolute;
  float:left; */
 /*  margin-left:36%; */
  height: 67%;
/*   padding-left:2%; */
}

.interest{
margin-top: 2%;
}

graduation>h6{
}

.activity h6, .project h6{
	margin-bottom: 3% !important;
}

.myInfo, .sgca{
  position:relative;
  width:50%;
  height:auto;
  float: left;
}
.sgca{
  position:relative;
  width:100%;
  height:auto;
  border: 1px solid black;
}

.myInfo_upper, .myInfo_under{
  position:relative;
  width:100%;
  overflow:auto;
}
.picBox{
  float:left;
  width:20%;
  height:auto;
}
.skill_content div {
    margin-left: 2%;
}
.advantage{
margin-top: 5%;
    font-weight: 600;
}
.introduce{
margin-top:1%;
}
.infoBox{
  float:right;
  width:54%;
  height:auto;
  padding-left:6%;
}
.contact>div{
  margin-bottom:2%;
}
.myInfo>div{
  margin-bottom:2%;
}
.sgca>div{
  margin-bottom:5%;
}
.advantage ,interest,introduce,.caBox {
  display :block;
}
.advantage *,.interest *,.skill_content div *,.award_content div *,.ceritificate_content div *{
  display:inline-block;
  margin-bottom:1%;
}
.graduation{
margin-top: 4%;
}
.graduation_content div *{
display:inline-block;
}
.award_content>div div:nth-child(3),.ceritificate_content>div div:nth-child(3),.project_skill *,.activity_content>div>div:nth-child(3){
  background-color:#EAEAEA;
  padding:0 2%;
  border-radius:5px;
}
.award_content>div div:nth-child(1),.ceritificate_content>div div:nth-child(1),.skill_content>div>div:nth-child(1),.graduation_content>div>div:nth-child(1){
  font-weight:600;
}

.caBox{
  overflow:hidden;
  margin-top: 3%;
}
.caBox>div{
  float :left;
  width:50%;
} 
.advantage div {
    margin-right: 1%;
}
.interest div{
  background-color:#FDCBCB;
  margin-right: 1%;
  border-radius:5px;
  padding:0 1.5%;
  font-weight:700;
}
.graduation_content div div {
    margin-right: 1.5%;
}
.ceritificate_content div div, .award_content div div {
    margin-right: 2%;
}
.activity,.project{
  position:relative;
  width:100%;
}
.activity_content>div,.project_content>div{
  overflow:hidden;
}
/* .activity_content>div>div,.project_content>div>div{
  float:left;
  width:48%;
  padding:1%;
} */
.activity_content div div {
    width: fit-content;
    float: left;
    margin-right: 2%;
}
/* 실종  */
.project_content>div>div div,.activity_content>div>div div{
  margin-bottom:1.5%;
}
.project_content>div>div:nth-child(5),.activity_content>div>div div:nth-child(4){
  border : 1px solid #EAEAEA;
  border-radius:10px;
  padding:2%;
}
.project_content>div>div:nth-child(1){
	float: left;
    margin-right: 3%;
}
.project_content>div>div:nth-child(2){
	float: left;
}
/* .project_content>div>div:nth-child(3){
	margin-bottom: 6%;
} */
.project_content>div>div:nth-child(4){
	clear:both;
	margin-bottom: 1.5%;
}
.project_content>div>div:nth-child(2)>p, .activity_content>div>div:nth-child(3)>p
{
color: #a49c9c;
}
.activity_content>div> div:nth-child(4){
margin-top: 2%;
    margin-bottom: 4%;
  border : 1px solid #EAEAEA;
  border-radius:10px;
  padding:2%;
}
.project_content>div>div:nth-child(1),.activity_content>div>div:nth-child(1){
  font-weight:900;
/*   font-size: calc(1.1*var(--my-fontSize)); */
}
.project_content>div>div:nth-child(5) p,.activity_content>div>div:nth-child(4) p{
  line-height:130%;
  height: 70px;
}

.project_skill *,.activity_content>div div:nth-child(1),.activity_content>div>div:nth-child(2),.activity_content>div>div div:nth-child(3){
  display : inline-block;
  margin-right:1%;
}
.project_skill{
/*     margin: 4% 0 2%;
 */}
.project_content>div{
margin-bottom:3%;
}

/* progress bar  */
.range {
  -webkit-appearance: none;
  background: linear-gradient(to right,
    #FDCBCB 0%, #FDCBCB 50%,
    #EAEAEA 50%, #EAEAEA 100%);
  cursor: pointer;
  height: 10px;
  transitionx: 0.1s ease-in;
  width: 100%;
}
.range::-webkit-slider-thumb {
  -webkit-appearance: none;
}

:focus {
  outline: none;
}
.rangeBox{
  width:60%;
}
.rangeName{
  width:20%;
}
.skill_content>div>div:nth-child(3){
  margin-left:2%;
  color:#FDCBCB;
}

/* 가운데 선 */
.line{
  position:absolute;
  float:left;
  margin-left:36.5%;
  height:94%;
  border-left:1.5px solid #E3E3E3;
}

.urlIcon{
	    width: 4%;
    position: relative;
    top: -4px;
    left: 1%;
}

.contactIcon{
	width: 5%;
    margin-right: 2%;
}
.fieldTitle{
	display:none;
}

.bottomLeft {

    width: 50%;
    height: auto;
    float: left;
}
.bottomRight {

    width: 49%;
    height: auto;
    float: left;
}
    
    </style>
    
    <script>
    function getContextPath() {
        var hostIndex = location.href.indexOf( location.host ) + location.host.length;
        return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
    }
    
    $(document).ready(function () {
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
         	$("#itemBox_"+item[i].item_id).children(":last").append('<div class="rangeBox"><input type="range" min="0" max="100" value="'+item[i].content[1]+'" class="range" /></div>');
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
                            
                        
                           
                           	var newInput=document.createElement('div');
                         	$("#itemBox_"+item[i].item_id).append(newInput);
                         	                 
                           	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[0]+'</p></div>');
                           	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[1]+' ~ '+item[i].content[2]+'</p></div>');

                           	if(item[i].content[3] !=null && item[i].content[3] != "")
                           		$("#itemBox_"+item[i].item_id).children(":last").append('<div><a href="'+item[i].content[3]+'"><img class="urlIcon" src="'+currentPath+'/resources/images/phone2.png" alt="default_img"></a></div>');
                           	else
                           		$("#itemBox_"+item[i].item_id).children(":last").append('<div style="margin-bottom: 6%;"></div>');
                       		
                        		$("#itemBox_"+item[i].item_id).children(":last").append('<div class="project_skill"></div>');
                           	$("#itemBox_"+item[i].item_id).children(":last").append('<div><p>'+item[i].content[5]+'</p></div>');

                           var tools = item[i].content[4];
                           tools = tools.split("$");
                           	
                           	for(var a = 0; a < tools.length-1 ; a++)
                           			$("#itemBox_"+item[i].item_id).children(":last").children(":last").children(".project_skill").append('<div><p>'+tools[a]+'</p></div>');
                           	
                            }


    }
    });//document.ready end

    </script>
    
</head>
<body>
<div class="wrap">
    <!--전체 body-->
    <div class="container">
        <!--div1(left box)-->
        <div class="top">
            <!-- 개인정보, 관심분야, 장점, 자기소개 -->
            <div class="myInfo">
                <div class="myInfo_upper">
                    <!-- 사진 div -->
                    <div class="picBox">
                        <img src="#">
                    </div>
                    <!-- 개인정보 div -->
                    <div class="infoBox">
                        <!-- 이름 -->
                        <div class="name"> 
                            <div><h3>${Name}</h3></div>
                        </div>
                        <!-- contact -->
                        <div class="contact">
                            <div><p><span><img class="contactIcon" src="<%=request.getContextPath()%>/resources/images/phone2.png" alt="default_img"></span>서울특별시</p></div>
                            <div><p id='itemBox_5'></p></div>
                            <div><p id='itemBox_6'></p></div>
                            <div><p><span><img class="contactIcon" src="<%=request.getContextPath()%>/resources/images/phone2.png" alt="default_img"></span>${email}</p></div>
                            <div><p><span><img class="contactIcon" src="<%=request.getContextPath()%>/resources/images/phone2.png" alt="default_img"></span>${phone}</p></div>
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
    <!—/ 전체 body —>
    </div> 
    
</div>
</body>
</html>