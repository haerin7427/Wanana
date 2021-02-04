<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--doughnut chart-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://rendro.github.io/easy-pie-chart/javascripts/jquery.easy-pie-chart.js"></script>
    
    <!-- 한글 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">

    <title>portfolio</title>
    <style>
	    :root {
		  --my-font: sans-serif;
		  --my-color:black;
		}
       
		p{
		    display: inline;
		    font-size:15px;
		}
		
		#coding_exp p{
			font-size:12px;
		}
		
		.wrap {
			display: flex;
			width: 1100px;
			height: 1400px;
			background-color: white;
			font-family:var(--my-font);
		}

        h6{
            color:#A6A6A6;
            margin-bottom:2px;
            margin-top:10px;
        }
        .small_title{
        	color:black;
        	font-size: 18px;
        	margin-top:10px;
        }
        .small_title2{
			font-weight:bold;
			color:#9fa0a0;
		}
        .title_line{
       		width:40px; height:7px; background-color:black; margin-bottom:20px; margin-top:5px;
        }

        .container { 
        	/*padding: 10px 70px; */
        	margin: 80px auto; 
        	background: #f5f5f5; 
        	!important;
        	border: solid #666; 
        	border-width: 8px 0 2px 0;
        	border: 1px solid black;
			display: flex;
			flex-direction: column;
			width: 1000px;
			height: 1300px;
        }
        
        .header{
        	display: flex;
        	padding: 40px 50px;
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
			padding:10px 0 10px 0;
		}
        
        .main_column {
            float: left;
            width: 50%;
            padding:10px 25px 0 25px;
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
            padding-left:15px;
        }
        
       
        .itemBox_8{
        	width:100%;
            counter-reset: section 0;
        }
        
       #tec:after,.itemBox_3,.itemBox_7,.itemBox_8,.itemBox_9,.itemBox_11,.itemBox_12 ,.itemBox_10{
            content: "";
            display: table;
            clear: both;
            margin-bottom:3px;
          	overflow: auto;
        	margin-top:20px;
        }
  
        
        
        #tec, #exps{
			width: 100%;
			padding: 0 20px 0 20px;
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
        

        /*exps*/
        .item_08{
            /*font-size: 1em;*/
            line-height: 1.75em;
            border-top: 1px solid black;
            /*border-image: linear-gradient(to right, #743ad5 0%, #d53a9d 100%);*/
            border-image-slice: 1;
            border-width: 1px;
            margin: 0;
            padding: 13px 25px 13px 25px;
            counter-increment: section 1;
            position: relative;
            color: black;
            
        }

        /*numbers*/
        .item_08:before {
            content: counter(section);
            position: absolute;
            border-radius: 50%;
            padding: 10px;
            height: 1.0em;
            width: 1.0em;
            background-color: black;
            text-align: center;
            line-height: 1.25em;
            color: white;
            font-size: 0.8em;
        }
        /*odd number borders*/
        .item_08:nth-child(odd) {
            border-right: 1px solid;
            padding-left: 0;
        } 
        .item_08:nth-child(odd):before {
            left: 100%; 
            margin-left: -20px;
        }
        .item_08:nth-child(even) {
            border-left: 1px solid;
            padding-right: 0;
        } 
        .item_08:nth-child(even):before {
            right: 100%; 
            margin-right: -20px;
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
        .tecs{
		    float:left;
		    margin:5px;
		}
		
		
		@media (max-width: 600px) {
   		 	.tecs {
       		 	width: 100%;
   			}
		}	
       /*exps end*/
       
       /*nams css*/
		.item_1{
			font-size:42px; color:white; font-weight:bold; display:inline;
		}
		
		/*interest css*/
		.item_04,#item_4{
			display:inline-block; 
		}
		.item_4{
			
			background-color:#424242; 
			padding:3px 7px; 
			border-radius:11px;
		}
		.item_4:first-child{
			margin-right:5px;
		}
		
		/*introduce css*/
		.item_2{
			color:white;
		}
		
		/*contact css*/
		.item_5,.item_6{
			padding:3px 0;
		}
		
		.item_3{
		    float:left;
		}
		

		.item_11, .item_10, .item_12{
		    display:inline;
		}
		
		.item_010{
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
		
		
		
		@media print {
			.header{background-color: #2a2b2b; !important; -webkit-print-color-adjust:exact; color-adjust:exact;}
			canvas{color: #f5b433; }
		}
		
		
	</style>
</head>
<body>
	<div class="wrap">
    <!--전체 body-->
    <div class="container">
        <!--div1(header)-->
        <div class="header">
            <!--div1_1(사진)-->
            <div class="header_column side mypic itemBox_1" id="item_1"  style="width:150px;">
            	<img class="pic" src="<%=request.getContextPath()%>/resources/images/default_userpic.png" width="135" alt="<%=request.getContextPath()%>/resources/images/default_userpic.png">
            </div>
            
            <!--div1_2(이름+자기소개)-->
            <div class="header_column middle aboutme"  style="width: 580px; display:table-cell; margin:0 15px; padding-top:8px;">
                <!--이름-->
                <div class="name" style="margin-bottom:5px;">
                	<div class="name1_content1" style="font-size:42px; color:white; font-weight:bold; display:inline;">
	                  ${Name}
	                </div>
		            <!--div2_1(희망분야)-->
		            <div class="itemBox_4" style="display:inline; color:white; margin: 0 10px; display: inline-block;">
						<h4 class="interest_title" style="display:inline; color:#efefef; margin-bottom:8px;">#희망분야</h4>
						<div class="interests" id="item_4"></div>
					</div>
                </div>

                <!--자기소개-->
                <div class="itemBox_2" style="display:none; position:relative; top:-5px;">
                	<h4 style="color:#F9CA03; margin-bottom:3px; ">ABOUT ME</h4>
                	<div id="item_2"></div>
                </div>
            </div>
            
            <!--div1_3(contact)-->
            <div class="header_column side contact" style="width:230px; padding:15px; font-size: 15px; background-color:var(--my-color, #efefef); border-radius:15px;">
            	<img class="pic" style="position:relative; top:5px;"src="<%=request.getContextPath()%>/resources/images/phone.png" width="25" alt="default_img">
            	<h3 style="line-height:5px; display:inline; padding-left:5px;">CONTACT</h3>
            	<ul class="myContact"  style="list-style:none; -webkit-padding-start:0px;width: 100%; height: 100%; margin: 0; overflow: hidden; padding-top:10px;">
	                <!--핸드폰 번호-->
	                <li class="phone">
	               		<div class="phone1">
	                		<div class="phone1_content1" style="padding:3px 0;">${phone}</div>
	                	</div>
	                </li>
	                	
	                <!--이메일-->
					<li class="email"> 
						<div class="email1">
							<div class="email1_content1" style="padding:3px 0;">${email}</div>
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
				<div class="itemBox_9"  style="display:none; ">
					<h6 class="small_title" style="font-weight:700">학력</h6>
					<div class="title_line"></div>
					<div class="educations" id="item_9"></div>
				</div>
				
				<!--div2_3(강점)-->
				<div class="itemBox_3" style="display:none;">
					<h6 class="small_title" style="font-weight:700">강점</h6>
					<div class="title_line"></div>
					<div class="strengths" id="item_3"></div>
				</div>
				
				<!--div2_4(자격증/수상경력)-->
				<div class="cANDa" >
					<!--자격증-->
					<div class="itemBox_11" style="display:none; ">
						<h6 class="small_title" style="font-weight:700">자격증</h6>
						<div class="title_line"></div>
						<div class="certificates" id="item_11"></div>
					</div>
					
					<!--수상경력-->
					<div class="itemBox_12" style="display:none; ">
						<h6 class="small_title" style="font-weight:700">수상경력</h6>
						<div class="title_line"></div>
						<div class="awards" id="item_12"></div>
					</div>
				</div>
					
				<!--div2_5(활동)-->	
				<div class="itemBox_10" style="display:none; ">
					<h6 class="small_title" style="font-weight:700">나의 활동</h6>
					<div class="title_line"></div>
					<div class="activities" id="item_10"></div>
				</div>
	        </div>
	        
	        <div class="vl" style="border-left: 1px solid black; float:left; height: 1000px;"></div>
	         
			<!--div3(right box)-->
	        <div class="main_column right">
	           <!--div3_1(테크닉)-->	
	           <div class="itemBox_7" id="tec" style="display:none; ">
					<h6 class="small_title" style="font-weight:700">테크닉</h6>
					<div class="title_line"></div>
					<div class="tecs" id="item_7">
					
					</div>
				</div>
				
				<!--div3_2(개발경험)-->
				<div id="coding_exp">	
					<div id="exps" class="itemBox_8" style="display:none;">
						<h6 class="small_title" style="font-weight:700">개발경험</h6>
						<div class="title_line"></div>
						<div class="exps" id="item_8"></div>
					</div>
				</div>
	        </div>
        </div>
    <!--/ 전체 body -->
    </div> 
    
<script>
   		var item= ${data_list};
   		var template_info=${template_info};
   		document.body.style.setProperty("--my-font", template_info[0].template_font);
   		document.body.style.setProperty("--my-color", template_info[0].template_color);
  		//div에 div 넣기 
		for(var i=0; i < item.length; i++){
			
			var ele = document.getElementsByClassName("itemBox_"+item[i].item_id);
			
			if(ele[0].style.display == "none"){
				ele[0].style.display = "block";
			}
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
				$($("#item_1").children('img')).attr("src", new_image_src); 
				$($("#item_1").children('img')).css("width", "166");
				$($("#item_1").children('img')).css("height", "195"); 
				
				
			}else if(item[i].item_id == 7){
				//technique-도넛 차트
				var newInput=document.createElement('div');
				newInput.className="chart item_"+item[i].item_id+"_"+i+"_"+0;
				newInput.id="item_"+item[i].item_id+"_"+i+"_"+0;
				newInput.setAttribute("data-percent",item[i].content[1]);
				newInput.innerHTML = item[i].content[0];
				
				
				$("#item_"+item[i].item_id+"_"+i).append(newInput);

				
			    $('.item_'+item[i].item_id+"_"+i+"_"+0).easyPieChart({
				   
			    	scaleColor: "#ecf0f1",
			    	lineWidth:5,
			    	
			    	barColor: '#f5b433',
			    	trackColor:	"#ecf0f1",
			    	size: 70,
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
                    }
                    else if(item[i].item_id == 8){
                    	if(j==1)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');
                        else if(j==2)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>&nbsp(</p><p>'+item[i].content[j-1]+'</p><p>&nbsp~&nbsp</p>');
                        else if(j==3)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p><p>)</p>');
                        else if(j==4)
                            $("#item_"+item[i].item_id+"_"+i+"_"+j).append('<p>'+item[i].content[j-1]+'</p>');

                    }
                    else if(item[i].item_id == 9){

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
                    
                    }
                    else if(item[i].item_id == 10){
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
                    }
				else if(item[i].item_id == 11){
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
						$("#item_"+item[i].item_id+"_"+i+"_"+j).append("<p>"+item[i].content[j-1]+"<p>");
					
				}
				//i=>한 item에 몇개의 data가 있을 경우, 구분해주기 위해
				//j=>해당 data의 몇번째 input인지
			}
		}//div에 div 넣기 

    </script>
	</div>
</body>
</html>