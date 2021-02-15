<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Output page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
	
		<!--doughnut chart-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://rendro.github.io/easy-pie-chart/javascripts/jquery.easy-pie-chart.js"></script>

<!-- 한글 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">

<style>

:root {
  --my-font: sans-serif;
  --my-color:black;
  --my-color2:white;
}

.aside, .header, .left, .right, #mypic, .aboutme, #contact, #interest,
	.name, #interest1, #interest2, #interest3, #chart,
	#coding_exp, #exps, #exp1, #exp2, #exp3, #exp4, #exp5,
	#free_one, #free_two, #free_three {
}
p{
    display: inline;
}



.wrap {
	border: 1px solid black;
	display: flex;
	width: 1122px;
	height: 755px;
	background-color: white;
	font-family:var(--my-font);
}

.aside {
	float: left;
	width: 23%;
	height: 100%;
	background-color: var(--my-color);
	box-shadow:5px 0 13px gray;
}

.container {
	display: flex;
	flex-direction: column;
	width: 100%;
}

.header {
	display: flex;
	width: 100%;
	height: 12%;
	background-color: #efefef;
	box-shadow:0 5px 13px gray;
}

.main {
	display: flex;
	width: 100%;
	height: 100%;
	padding-top:15px;
	background-color:var(--my-color2);
}

.left, .right {
	width: 50%;
	display: flex;
	flex-direction: column;
}

#mypic, .aboutme, #contact {
	margin: auto;
	width: 80%;
}


#mypic {
	padding: 50px 0 0 0;
	overflow:auto;
}



.aboutme {
	padding: 10px 0 0 0;
	height: 325px;
}

#introduce {
	padding: 15px 0 0 0;
	color: white;
	font-size: 14px;
}

#contact {
	height:130px;
	font-size: 12px;
	color: white;
	padding: 10px 0 0 0;
}

#interest {
	width: 80%;
	padding: 0 20px 0 20px;
}

.name {
	width: 20%;
	text-align: right;
	padding: 0 30px 0 0;
}

.interests {
	display: flex;
	color: #f5b433;
	font-weight: 700;
	font-size: 22px;
}

 #tecs {
	display: flex;

}

#interest1, #interest2, #interest3 {
	margin: 0 10px 0 0;
}

#tec, #exps{
	width: 100%;
	padding: 0 20px 0 20px;
}

#chart {
	display: flex;
	width: 100%;
}

#cht1, #cht2, #cht3, #cht4 {
	width: 26%;
}

.title_line{
       		width:40px; height:7px; background-color:black; margin-bottom:20px; margin-top:5px;
}

#coding_exp {
	display: flex;
	height: 100%;
}


#exp1, #exp2, #exp3, #exp4, #exp5 {
	height: 20%;
}

#strength, #free_one, #free_two, #free_three {
	height: max-content;
}


.interest_title{
    margin-top: 10px;
    margin-right: 5px;
    background-color: white;
    color: #727171;
    border: 1px solid white;
    vertical-align:middle;
    border-radius: 40px;
    text-align: center;
    padding: 6px 15px;
    font-weight: 700;
    width: 100px;
    font-size: 15px;
}

.small_title{
    margin-top: 10px;
    margin-right: 5px;
    border: 3px solid #efefef;
    background-color: white;
    border-radius: 10px;
    color: #f5b433;
    padding: 2px 5px;
    text-align:center;
    width: 90px;
    font-size: 17px;
}
.tech{
	border: 2px solid black;
	border-radius:40px;
}

.small_title2{
	font-weight:bold;
	color:#9fa0a0;
}
.tec:after {
    content: "";
    display: table;
    clear: both;
}

.tecs{
    padding:10px;    
    float:left;
}

@media (max-width: 600px) {
    .tecs {
        width: 100%;
    }
}

.chart {
  position: relative;
  display: inline-block;
  color: #999;
  font-size: 14px;
  text-align: center;
  width:100px;
  height:100px;
}
.chart canvas {
  position: absolute;
  top: 0;
  left: 0;
}

#item_2_0_1{
    color:white;
    font-size:14px; 
    word-break:keep-all;
}

.item_4{
    background-color:#424242; 
    padding:3px 10px 0px 10px; 
    margin-right:5px;
    border-radius:11px;
}

.item_3{
    float:left;
}

.item_11, .item_10, .item_12{
    display:inline;
}

.item_010, .item_08{
    margin-bottom:15px;
}

.item_07{
    float:left; 
    text-align:center;
    padding-right:12px; 
}

.item_9_1, .item_9_2, .item_9_3, .item_9_6, .item_9_5{
    float:left;
}


@media print {

	.aside {background-color: #2a2b2b; !important; -webkit-print-color-adjust:exact;}
	.header{background-color: #efefef; !important; -webkit-print-color-adjust:exact;}
	
}

.item_8_1, .item_8_2{
    float:left 
}

.item_8_1, .item_9_2, .item_10_1, .item_10_2, .item_11_1, .item_12_1{
    font-weight:bold;
}

.item_8_4, .item_10_5{ 
    display:block;
    border: 1px solid gray;
    padding: 8px 8px 0 8px;
    border-radius: 7px;
    font-size: 10.5px; 
    word-break:keep-all;
}

</style>

</head>
<body >

	<div class="wrap">
	
		<!-- 왼쪽 사이드 바  -->
		<div class="aside">
			<div id="mypic">
				<img class="imageicon" src="<%=request.getContextPath()%>/resources/images/default_userpic.png" width="100%" alt="default_img&quot;" data-image-width="166" data-image-height="195">
			</div>
			
			<div style="display:block;" class="aboutme" id="item_2">
				<h4 style="color: #f5b433; font-size:18px; font-weight:800;">ABOUT ME</h4>
				
			</div>
			
			<div id="contact">
                <img class="pic" style="position:relative; top:-3px;"src="<%=request.getContextPath()%>/resources/images/phone2.png" width="20" alt="default_img">
                <h5 style="line-height:5px; display:inline; padding-left:5px;">CONTACT</h5>
                
                <div style="padding:7px;">
                    <div class="phone">${phone}</div>
                    <div class="email">${email}</div>
                    <div class="github" id="item_5"></div>
                    <div class="blog" id="item_6"></div>
                </div>

			</div>
		</div>
		
		<!-- 메인 섹션 -->
		<div class="container">
		
			<!-- 메인 헤더 (희망 분야)  -->
			<div class="header">
			<!-- 희망 분야  -->
				<div class="interest" style="width:90%; padding:8px;">
					<h4 class="interest_title" style="float:left"> 희망분야</h4>
					<div class="interests" id="item_4" style="position:relative; top:9px; color:white;"></div>
				</div>
				<div class="name" id="item_1">
					<h1 style="font-weight:800; padding-top: 23px; margin: auto 0;">${Name}</h1>
				</div>
			</div>

			 <!-- 포트폴리오 바디 -->
			<div class="main">

				<!-- 왼쪽 바디 -->
				<div class="main_column left" id="leftBody" style="padding: 15px;">
				
					<div id="education" style="margin-bottom:10px;">
						<h5 class="small_title" style="font-weight:700">학력</h5>
						<div class="educations" id="item_9" style="padding: 0 30px 0 10px;"></div>
                    </div>
                    
					<div id="strength">
						<h5 class="small_title" style="font-weight:700">강점</h5>
						<div class="strengths" id="item_3"></div>
					</div>
					
					<!--div2_4(자격증/수상경력)-->
                    <div class="cANDa" >
                        <!--자격증-->
                        <div class="certificate">
                            <h4 class="small_title" style="font-weight:700">자격증</h4>
                            <div class="certificates" id="item_11"></div>
                        </div>
                        
                        <!--수상경력-->
                        <div class="award">
                            <h4 class="small_title" style="font-weight:700">수상경력</h4>
                            <div class="awards" id="item_12"></div>
                        </div>
                    </div>

					<!--나의 활동-->
					<div id="activities">
						<h5 class="small_title" style="font-weight:700">나의 활동</h5>
						<div class="activities" id="item_10" style="padding: 0 30px 0 10px;"></div>
                    </div>
                    
                </div>
                
                <div class="vl" style="border-left: 1px solid gray; float:left; height: 95%;"></div>


				<!-- 오른쪽바디 -->
				<div class="main_column right">
					<div id="tec" style="margin-bottom:10px;">
						<h6 class="small_title" style="font-weight:700">테크닉</h6>
						<div class="tecs" id="item_7" style="padding: 0 5px 0 10px;"></div>
					</div>
					
					<div id="coding_exp">
						<div id="exps">
							<h6 class="small_title" style="font-weight:700">개발경험</h6>
							<div class="exps" id="item_8" style="padding: 0 5px 0 10px;"></div>
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>


	<script>
   		var item= ${data_list};
   		var template_info=${template_info};
   		document.body.style.setProperty("--my-font", template_info[0].template_font);
   		if(template_info[0].template_color>0){
   			var color_info;
   			$.ajax({ //해당 color 정보 가져오기
   				url : "colorData",
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
  		//div에 div 넣기 
		for(var i=0; i < item.length; i++){
			
			//item 별로 div 넣기
			//div1 (하나의 detail_id에 대한 내용 넣기)
			var newItem=document.createElement('div');
			newItem.className="item_0"+item[i].item_id;
			newItem.id="item_"+item[i].item_id+"_"+i;
			$('#item_'+item[i].item_id).append(newItem);

			
			if(item[i].item_id == 1){
				//파일의 경우

				//console.log("파일명  :" + item[i].content[0]);
				if(item[i].content[0].indexOf("data:") != -1) {
					var new_image_src = item[i].content[0];
				}
				
				else {
					var new_image_src = "resources/user_photo/" + item[i].content[0];
				}
				
				$($("#mypic").children('img')).attr("src", new_image_src); 
				$($("#mypic").children('img')).css("width", "166");
				$($("#mypic").children('img')).css("height", "195"); 
				
				
			}else if(item[i].item_id == 7){
				//technique-도넛 차트
				var newInput=document.createElement('div');
				newInput.className="chart item_"+item[i].item_id+"_"+i+"_"+j+" chart";
				newInput.id="item_"+item[i].item_id+"_"+i+"_"+j;
				newInput.setAttribute("data-percent",item[i].content[1]);
				
				newInput.innerHTML = item[i].content[1];
				
				$("#item_"+item[i].item_id+"_"+i).append(newInput);

                var nameInput=document.createElement('div');
                nameInput.innerHTML = item[i].content[0];
                $("#item_"+item[i].item_id+"_"+i).append(nameInput);
				
			    $('.item_'+item[i].item_id+"_"+i+"_"+j).easyPieChart({
			    	scaleColor: "#ecf0f1",
			    	lineWidth:5,
			    	    
			    	barColor: '#f5b433', 
			    	trackColor:	"#ecf0f1",
			    	size: 62,
			    	animate: 500
			    });
			    
			}
			else{
				//div1에 input 내용 넣기
				for(var j=1; j<=item[i].data_no;j++){
					var newInput=document.createElement('div');
					newInput.className="item_"+item[i].item_id+"_"+i+"_"+j+ " item_"+item[i].item_id + " item_"+item[i].item_id +"_"+j;
					newInput.id="item_"+item[i].item_id+"_"+i+"_"+j;

					$("#item_"+item[i].item_id+"_"+i).append(newInput);
					
                    if(item[i].item_id == 3){
                        $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp#</p><p>'+item[i].content[j-1]+'</p>');
                    }else if(item[i].item_id == 8){
                        if(j==1)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==2)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>&nbsp~&nbsp</p>');
                        else if(j==3)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p><p>)</p>');
                        else if(j==4)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');


                    }else if(item[i].item_id == 9){

                        if(j==1)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p class="small_title2" >'+item[i].content[j-1]+'</p><p style="color:#9fa0a0; font-weight:bold">.&nbsp</p>');
                        else if(j==2)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==3)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>&nbsp~&nbsp</p>');
                        else if(j==4)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p><p>)</p>');
                        else if(j==5)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p class="small_title2">전공.&nbsp</p><p>'+item[i].content[j-1]+'</p>');
                        else if(j==6)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(학점: </p><p>'+item[i].content[j-1]+'</p><p>)</p>');

                    }else if(item[i].item_id == 10){
                        if(j==1)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p class="small_title2" >'+item[i].content[j-1]+'</p><p style="color:#9fa0a0; font-weight:bold">.&nbsp</p>');
                        else if(j==2)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==3)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>&nbsp~&nbsp</p>');
                        else if(j==4)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p><p>)</p>');
                        else if(j==5)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                    }else if(item[i].item_id == 11){
                        if(j==1)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==2)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>)</p>');
                    }else if(item[i].item_id == 12){
                        if(j==1)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==2)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p>');
                        else if(j==3)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>|</p><p>'+item[i].content[j-1]+'</p><p>)</p>');

                    }else
                        $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
					
				}
				//i=>한 item에 몇개의 data가 있을 경우, 구분해주기 위해
				//j=>해당 data의 몇번째 input인지
			}
		}//div에 div 넣기 

    </script>
</body>
</html>