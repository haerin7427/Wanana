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
    <title>portfolio</title>
    <style>
	    :root {
		  --my-font: sans-serif;
		  --my-color:black;
		  --my-color2:white;
		  --my-fontSize:15px;
		}
		
		.wrap p{
		    display: inline;
		    font-size:calc(1*var(--my-fontSize));
		}
		
		#coding_exp p{ /* 개발경험 p */
			font-size:calc(0.8*var(--my-fontSize));
		}
		
		.wrap {
			display: flex;
			width: 1100px;/* 2480 */
			height: 1400px;/* 3508 */
			background-color: white;
			font-family:var(--my-font);
		}
        .wrap h6{
            color:#A6A6A6;
            margin-bottom:0.45%;
            margin-top:5%;
        }
        .small_title{
        	color:black;
        	font-size: calc(1.2*var(--my-fontSize));
        	margin-top:2.3%;
        }
        .small_title2{
			font-weight:bold;
			color:#9fa0a0;
		}
        .title_line{
       		width:18%; 
       		height:calc(0.5*var(--my-fontSize)); 
       		background-color:black; 
       		margin-bottom:4.5%; 
       		margin-top:1.1%;
        }
        .container { 
        	/*padding: 10px 70px; */
        	margin: 5.7% auto; 
        	background: #f5f5f5; 
        	!important;
        	border: solid #666; 
        	border-width: 0.57% 0 0.1425% 0;
        	border: 1px solid black;
			display: flex;
			flex-direction: column;
			width: 91%; /* 1000 */
			height: 93%; /* 1300 */
        }
        
        .header{
        	display: flex;
        	padding: 4% 5%;/* 40px 50px; */
        	background-color: var(--my-color);
        	!important;
        	box-shadow:0 5px 13px gray;
            border-bottom: 1px solid #ccc;
           
        }
        .header::after{
            content: "";
            display: table;
            clear: both;
        }
        .header_column.side {
            width: 25%;
        }
        .header_column.middle {
            width: 50%;
        }
        @media (max-width: 600px) {
            .header_column {
                width: 100%;
            }
        }
        .header{
        	display: flex;
        }
		.main{
			display: flex;
			width: 100%;
			height: 100%;
			padding:1% 0;
			background-color:var(--my-color2);
		}
        
        .main_column {
            float: left;
            width: 50%;
            padding:1% 2.5% 0 2.5%;
        }
        .main:after {
            content: "";
            display: table;
            clear: both;
        }
        @media (max-width: 600px) {
            .main_column {
                width: 100%;
            }
        }
        .name,.itemBox_2{
            padding-left:3%;
        }
        
       
        .itemBox_8{
        	width:100%;
            counter-reset: section 0;
        }
        
       #tec:after,.itemBox_3,.itemBox_7,.itemBox_8,.itemBox_9,.itemBox_11,.itemBox_12 ,.itemBox_10{
            content: "";
            display: table;
            clear: both;
            margin-bottom:0.7%;
          	overflow: auto;
        	margin-top:4.5%;
        }
  
        
        
        #tec, #exps{
			width: 100%;
			padding: 0 4.4% 4.4%;
		}
        
        .item_07{ 
            float:left;
           
        }
        @media (max-width: 600px) {
            .item_07 {
                width: 100%;
            }
        }
        		
		#coding_exp {
			height: 100%;
		}
				
		
		#exp1, #exp2, #exp3, #exp4, #exp5 {
			height: 20%;
		}
		
		#strength, #free_one, #free_two, #free_three {
			height: max-content;
		}
        
        .chart {
		  position: relative;
		  display: inline-block;
		  color: #999;
		  font-size: calc(0.93*var(--my-fontSize));
		  text-align: center;
		  width:100px;
		  height:100px;
		}
		
		.chart canvas {
		  position: absolute;
		  top: 0;
		  left: 0;
		}
        
        /*exps*/
        .item_08{
            /*font-size: 1em;*/
            line-height: 1.75em;
            border-top: 1px solid black;
            /*border-image: linear-gradient(to right, #743ad5 0%, #d53a9d 100%);*/
            border-image-slice: 1;
            border-width: 1px;
            margin: 0;
            padding: 3.2% 6.1% 3.2% 6.1%;
            counter-increment: section 1;
            position: relative;
            color: black;
            
        }
        /*numbers*/
        .item_08:before {
            content: counter(section);
            position: absolute;
            border-radius: 50%;
            padding: 2.4%;
            height: 1.3em;
            width: 1.3em;
            background-color: black;
            line-height: 1.25em;
            color: pink;
            font-size: 0.8em;
            padding:0 1.5%;
        }
        /*odd number borders*/
        .item_08:nth-child(odd) {
            border-right: 1px solid;
            padding-left: 0;
        } 
        .item_08:nth-child(odd):before {
            left: 100%; 
            margin-left: -4.8%;
        }
        .item_08:nth-child(even) {
            border-left: 1px solid;
            padding-right: 0;
        } 
        .item_08:nth-child(even):before {
            right: 100%; 
            margin-right: -4.8%;
        }
        .item_08:first-child {
            border-top: 0;
            border-top-right-radius:0;
            border-top-left-radius:0;
        }
        .item_08:last-child {
            border-bottom-right-radius:0;
            border-bottom-left-radius:0;
        }
		
		
		@media (max-width: 600px) {
   		 	.tecs {
       		 	width: 100%;
   			}
		}	
       /*exps end*/
       
		
		/*interest css*/
		.item_04,#item_4{
			display:inline-block; 
		}
		.item_4{
			
			background-color:#424242; 
			border-radius:11px;
		}
		.item_4:first-child{
			margin-right:0.3em;
		}
		
		/*introduce css*/
		.item_2{
			color:white;
		}
		
		/*contact css*/
		.item_5,.item_6{
			padding:1.7% 0;
		}
		
		.item_3{
		    float:left;
		}
		
		.item_11, .item_10, .item_12{
		    display:inline;
		}
		
		
		.item_07{
		    float:left; 
		    text-align:center;
		    padding-right:2.5%; 
		}
		
		.item_9_1, .item_9_2, .item_9_3, .item_9_6, .item_9_5{
		    float:left;
		}
		
		
		.item_8_1, .item_8_2{
		    float:left 
		}
		
		.item_8_1, .item_9_2, .item_10_1, .item_10_2, .item_11_1, .item_12_1{
		    font-weight:bold;
		}
		
		@media print{
			canvas{
			!important;
			}
		}
		
		.small_title, .title_line{
			display:none;
		}
		
		.itemBoxCSS{
			width: 100%;
		}
	</style>
	<script>
$(document).ready(function () {
   		var item= ${data_list};
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
   		
   		
  		//div에 div 넣기 
		for(var i=0; i < item.length; i++){
			
			var ele = document.getElementsByClassName("itemBox_"+item[i].item_id);
			
			/* if(ele[0].style.display == "none"){
				ele[0].style.display = "block";
			} */
			//item 별로 div 넣기
			//div1 (하나의 detail_id에 대한 내용 넣기)
			var newItem=document.createElement('div');
			newItem.className="item_0"+item[i].item_id;
			newItem.id="item_"+item[i].item_id+"_"+i;
			$('#1page_preview #item_'+item[i].item_id).append(newItem);
			$('#1page_preview #item_'+item[i].item_id).siblings('.small_title').css("display","block");
			$('#1page_preview #item_'+item[i].item_id).siblings('.title_line').css("display","block");
			
			
			if(item[i].item_id == 1){
				//파일의 경우
				//console.log("파일명  :" + item[i].content[0]);
			
				if(item[i].content[0].indexOf("data:") != -1) {
					var new_image_src = item[i].content[0];
				}
				
				else {
					var whole_addr = $(location).attr('href');
				   	var addr_slice = whole_addr.split('/');
				   	var addr = addr_slice[0]+"/"+addr_slice[1]+"/"+addr_slice[2]+"/"+addr_slice[3] + "/";
									
					var new_image_src = addr+ "resources/user_photo/" + item[i].content[0];
				}
				$($("#1page_preview #item_1").children('img')).attr("src", new_image_src); 
				$($("#1page_preview #item_1").children('img')).css("width", "166");
				$($("#1page_preview #item_1").children('img')).css("height", "195"); 
				
				
			}else if(item[i].item_id == 7){
				//technique-도넛 차트
				var newInput=document.createElement('div');
				newInput.className="chart item_"+item[i].item_id+"_"+i+"_"+0;
				newInput.id="item_"+item[i].item_id+"_"+i+"_"+0;
				newInput.setAttribute("data-percent",item[i].content[1]);
				newInput.innerHTML = item[i].content[0];
				
				
				$("#1page_preview #item_"+item[i].item_id+"_"+i).append(newInput);
				
			    $('.item_'+item[i].item_id+"_"+i+"_"+0).css({
			    	"background-color":"#fff",
			    	"border": "7px "+ color_info.color1+" solid",
			    	"padding": "25%",
			    	"width":"80px",
			    	"height":"80px",
			    	"-webkit-border-radius":"100px",
			    	"-moz-border-radius": "100px"
			    });
			    
			}
			else{
				//div1에 input 내용 넣기
				for(var j=1; j<=item[i].data_no;j++){
					var newInput=document.createElement('div');
					newInput.className="item_"+item[i].item_id+"_"+i+"_"+j+ " item_"+item[i].item_id + " item_"+item[i].item_id +"_"+j;
					
					newInput.id="item_"+item[i].item_id+"_"+i+"_"+j;
					$("#1page_preview #item_"+item[i].item_id+"_"+i).append(newInput);
					if(item[i].item_id == 3){
                        $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp#</p><p>'+item[i].content[j-1]+'</p>');
                    }
                    else if(item[i].item_id == 8){
                    	if(j==1)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==2)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>&nbsp~&nbsp</p>');
                        else if(j==3)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p><p>)</p>');
                        else if(j==4)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==5)
                        	$("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==6)
                        	$("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                    }
                    else if(item[i].item_id == 9){
                        if(j==1)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p class="small_title2" >'+item[i].content[j-1]+'</p><p style="color:#9fa0a0; font-weight:bold">.&nbsp</p>');
                        else if(j==2)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==3)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>&nbsp~&nbsp</p>');
                        else if(j==4)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p><p>)</p>');
                        else if(j==5)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p class="small_title2">전공.&nbsp</p><p>'+item[i].content[j-1]+'</p>');
                        else if(j==6)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(학점: </p><p>'+item[i].content[j-1]+'</p><p>)</p>');
                    
                    }
                    else if(item[i].item_id == 10){
                    	if(j==1)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p class="small_title2" >'+item[i].content[j-1]+'</p><p style="color:#9fa0a0; font-weight:bold">.&nbsp</p>');
                        else if(j==2)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==3)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>&nbsp~&nbsp</p>');
                        else if(j==4)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p><p>)</p>');
                        else if(j==5)
                            $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                    }
				else if(item[i].item_id == 11){
                    if(j==1)
                        $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                    else if(j==2)
                        $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>)</p>');
                }else if(item[i].item_id == 12){
                    if(j==1)
                        $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                    else if(j==2)
                        $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p>');
                    else if(j==3)
                        $("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append('<p>|</p><p>'+item[i].content[j-1]+'</p><p>)</p>');
                }else
						$("#1page_preview #item_"+item[i].item_id+"_"+i+"_"+j).append("<p>"+item[i].content[j-1]+"<p>");
					
				}
				//i=>한 item에 몇개의 data가 있을 경우, 구분해주기 위해
				//j=>해당 data의 몇번째 input인지
			}
		}//div에 div 넣기 
});
    </script>
    
    
</head>
<body>
	<div class="wrap">
    <!--전체 body-->
    <div class="container">
        <!--div1(header)-->
        <div class="header">
            <!--div1_1(사진)-->
            <div class="header_column side mypic itemBox_1" id="item_1"  style="width:15%;">
            	<img class="pic" src="<%=request.getContextPath()%>/resources/images/default_userpic.png" width="109%" alt="<%=request.getContextPath()%>/resources/images/default_userpic.png">
            </div>
            
            <!--div1_2(이름+자기소개)-->
            <div class="header_column middle aboutme"  style="width: 62.5%; display:table-cell; margin:0 1.67%; padding-top:0.89%;">
                <!--이름-->
                <div class="name" style="margin-bottom:0.97%;">
                	<div class="name1_content1" style="font-size:calc(3.5*var(--my-fontSize)); color:white; font-weight:bold; display:inline;">
	                  ${Name}
	                </div>
		            <!--div2_1(희망분야)-->
		            <div class="itemBox_4" style="display:inline; color:white; margin: 0 1.97%; display: inline-block;">
						<h4 class="interest_title" style="display:inline; color:#efefef; font-size:calc(1.3*var(--my-fontSize)); margin-bottom:10%">#희망분야</h4>
						<div class="interests" id="item_4"></div>
					</div>
                </div>

                <!--자기소개-->
                <div class="itemBox_2" style="display:none; position:relative; top:-2.8%; ">
                	<h4 style="color:#F9CA03; margin-bottom:0.6%; font-size:calc(1.3*var(--my-fontSize));">ABOUT ME</h4>
                	<div id="item_2"></div>
                </div>
            </div>
            
            <!--div1_3(contact)-->
            <div class="header_column side contact" style="width:25.56%; padding:1.7%; font-size: calc(1*var(--my-fontSize)); color: white;background-color:var(--my-color, #efefef); border-radius:15px;">
            	<img class="pic" style="background-color:white; position:relative; top:2%;"src="<%=request.getContextPath()%>/resources/images/phone.png" width="15%" alt="default_img">
            	<h3 style="line-height:2%; display:inline; padding-left:2%; font-size:calc(2*var(--my-fontSize));">CONTACT</h3>
            	<ul class="myContact"  style="list-style:none; -webkit-padding-start:0px;width: 100%; height: 100%; margin: 0; overflow: hidden; padding-top:5.7%;">
	                <!--핸드폰 번호-->
	                <li class="phone">
	               		<div class="phone1">
	                		<div class="phone1_content1" style="padding:1.6% 0;">${phone}</div>
	                	</div>
	                </li>
	                	
	                <!--이메일-->
					<li class="email"> 
						<div class="email1">
							<div class="email1_content1" style="padding:1.6% 0;">${email}</div>
						</div>
					</li>
					<!--깃허브-->
					<li class="itemBox_5" id="item_5">
					</li>
					<!--블로그-->
					<li class="itemBox_6" id="item_6">
						
					</li>
				</ul>
            </div> 
        </div>
        
        <div class="main">

	        <!--div2(left box)-->
	        <div class="main_column left" >
				
				<!--div2_2(학력)-->
				<div class="itemBox_9 itemBoxCSS">
					<h6 class="small_title" style="font-weight:700;">학력</h6>
					<div class="title_line"></div>
					<div class="educations" id="item_9"></div>
				</div>
				
				<!--div2_3(강점)-->
				<div class="itemBox_3 itemBoxCSS" >
					<h6 class="small_title" style="font-weight:700">강점</h6>
					<div class="title_line"></div>
					<div class="strengths" id="item_3"></div>
				</div>
				
				<!--div2_4(자격증/수상경력)-->
				<div class="cANDa" >
					<!--자격증-->
					<div class="itemBox_11 itemBoxCSS" >
						<h6 class="small_title">자격증</h6>
						<div class="title_line"></div>
						<div class="certificates" id="item_11"></div>
					</div>
					
					<!--수상경력-->
					<div class="itemBox_12 itemBoxCSS" >
						<h6 class="small_title" style="font-weight:700">수상경력</h6>
						<div class="title_line"></div>
						<div class="awards" id="item_12"></div>
					</div>
				</div>
					
				<!--div2_5(활동)-->	
				<div class="itemBox_10 itemBoxCSS" >
					<h6 class="small_title" style="font-weight:700">나의 활동</h6>
					<div class="title_line"></div>
					<div class="activities" id="item_10"></div>
				</div>
	        </div>
	        
	        <div class="vl" style="border-left: 1px solid black; float:left; height: 100%;"></div>
	         
			<!--div3(right box)-->
	        <div class="main_column right">
	           <!--div3_1(테크닉)-->	
	           <div class="itemBox_7" id="tec" >
					<h6 class="small_title" style="font-weight:700">테크닉</h6>
					<div class="title_line"></div>
					<div class="tecs" id="item_7">
					
					</div>
				</div>
				
				<!--div3_2(개발경험)-->
				<div id="coding_exp">	
					<div id="exps" class="itemBox_8" >
						<h6 class="small_title" style="font-weight:700">개발경험</h6>
						<div class="title_line"></div>
						<div class="exps" id="item_8"></div>
					</div>
				</div>
	        </div>
        </div>
    <!--/ 전체 body -->
    </div> 
    
	</div>
</body>

    
	<!--doughnut chart-->
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/easyPieChart.js"></script>

</html>