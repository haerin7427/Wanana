<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>tab example</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<style type="text/css">

	* {
	  box-sizing: border-box;
	}

	body {
	  font-family: Arial, Helvetica, sans-serif;
	}

	#container {
			width:100%;
			margin:0 auto;
			/*text-align:center;*/
		}
		.tab {
			list-style: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		/* Float the list items side by side */
		.tab li {
			float: left;
		}
		/* Style the links inside the list items */
		.tab li a{
			display: inline-block;
			color: black;
			text-align: center;
			text-decoration: none;
			padding: 18px 45px;
			font-size: 17px;
			transition:0.3s;
		}
		
		.tab0{
			display: inline-block;
			color: black;
			text-align: center;
			text-decoration: none;
			padding: 18px 70px;
			font-size: 17px;
			transition:0.3s;
			font-weight:bold;
			color: #F9CA03;
		}
		
		/* Style the tab content */
		.tabcontent {
			display: none;
            width: 100%;
			background-color:white;
			padding: 6px 12px;
			color:#fff;
		}
		ul.tab li.current{
			border-radius: 6px 6px 0px 0px;
			background-color: white;
			color: #222;
		}
		.tabcontent.current {
			display: block;
		}

		/* Container for flexboxes */
		.row {
		  display: -webkit-flex;
		  display: flex;
		}

		/* Create three unequal columns that sits next to each other */
		.column {
		  padding: 10px;
		  height: 510px; /* Should be removed. Only for demonstration */
		  overflow:auto;
		}

		/* Left and right column */
		.column.side {
		   -webkit-flex: 1;
		   -ms-flex: 1;
		   flex: 1;
		}
		
		.category_gname{
			color:black; 
			margin-top: 10px;
			padding: 2px 0px 2px 10px; 
			background-color: #f7d063; 
			width:100%;
			border-radius: 10px 10px 0 0;
		}
		
		a:link, a:visited, a:hover{
			color: black; text-decoration: none;
		}

		/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
		@media (max-width: 600px) {
		  .row {
		    -webkit-flex-direction: column;
		    flex-direction: column;
		  }
		}

		.category{
			background-color:white;
			color:black;
			padding: 5px 0px 0px 10px;
		}
		
		.categoryin{
			background-color:white;
			color:black;
			padding: 12px 0px 0px 10px;
		}
		
		.detail,#body_plus,#body_in{
			background-color:white;
			color:black;
		}
		
		main {
        background-color: #F2F2F2;
        }
        
        .make_yportfolio{
        padding: 30px;
        background-color:white;
        border-radius: 40px;
        width: 85%;
        display: block; margin: 0px auto;
        }
        
        .preview{
        margin-top: 10px;
        margin-right: 5px;
        background-color: white;
        border: 1px solid #F9CA03;
        color: #F9CA03;
        vertical-align:middle;
        border-radius: 40px;
        text-align: center;
        padding: 10px 15px;
        font-weight: 700;
        width: 250px;
        font-size: 18px;
        }
        
        .add_group{
        margin-top: 10px;
        margin-right: 5px;
        background-color: white;
        vertical-align:middle;
        border-radius: 40px;
        text-align: center;
        color: #F9CA03;
        border: 1px solid #F9CA03;
        padding: 5px 15px;
        font-weight: 700;
        width: 100%;
        font-size: 13px;
        margin-bottom: 5px;
        }
        
        .store_data{
        margin-top: 10px;
        margin-right: 5px;
        background-color: #F9CA03;
        color: white;
        border: 1px solid #F9CA03;
        vertical-align:middle;
        border-radius: 40px;
        text-align: center;
        padding: 10px 15px;
        font-weight: 700;
        width: 250px;
        font-size: 18px;
        }
        
        .category{
        	background-color:#f2f2f2;
			width : 100% ;
			padding : 10px;
			margin-top : 5px ;
        }
        
        .item_input{
        	width:97%; 
        	padding: 8px; 
        	border-radius: 40px; 
        	border: 1px solid #CCCCCC; 
        	font-weight: 400;
        
        }
        
        .more, .close{
        	text-align:right;
        }
        
        .more button, .close button{
        	background-color:#cfd1d1;
        	border: 2px solid #cfd1d1;
        	border-radius:10px;
        	colorf:white;
        }
        
        .board1, .board2{
        	text-align: center;
        	margin-bottom: 5px;
        }
        
        .board1{
        }
        
        .board2{
        	margin-top: 10px;
        }
        
        .board2 button{
        	width: 90%;
        	font-size: 16px;
        	padding: 5px 0;
        	border-radius: 19px;
        	border: 2px solid #9FA0A0;
        	height:40px;
        }
        
        .board1 a{
        	font-size: 12px;
        }
       
       /*
        .board1 button, .board2 button{
        	heigth: 30px;
        	margin-bottom: 5px;
        	padding: 0 200px;
        	background-color:yellow;
        }
        */
 
		.showDetail{
			background-color: #cfd1d1;
			border-radius: 10px;
			width: 90%;
			margin: 0 auto;
		}
        
        .detail{
        	display: block;
        	background-color: #cfd1d1;
        	border-radius: 10px;
        	padding: 10px;
        	height: auto;
        	
        }
        .detail_input{
        	width: 78%;
        	display: inline-block;
        	/*float:left;*/
        }
        
        .detail_button{
        	float:right;
        	display:inline-block;
        	margin-bottom: 5px;
        	width: 17%;
        	vertical-align: middle;
        	text-align: right;
        }
        
        .detail_button a{
        	
        }
        
        .item_name{
        	float:left;
        }
    </style>


	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/basic/header.jsp" />
	<main>
    <div class="make_portfolio">
      <div id="container">
		<ul class="tab">
			<li class="tab0">${portfolio_name}</li>
			<li class="current" data-tab="tab1"><a href="#"><span style="font-size: 12px;">step1.&nbsp</span>템플릿선택</a></li>
			<li data-tab="tab2"><a href="#"><span style="font-size: 12px;">step2.&nbsp</span>정보입력</a></li>
		</ul>

		<!-- 템플릿 탭 (step1) -->
		<%
		//String templateURL ="/WEB-INF/views/templates/"+request.getAttribute("html")+".jsp";
		String templateURL ="/WEB-INF/views/portfolio_zero.jsp";
		%>

		<jsp:include page="<%=templateURL%>" flush="true"/>

		<!-- 데이터 탭 (step2) -->
		<div id="tab2" class="tabcontent">
			<div class="row">
			  <div class="column side" id="left" style="background-color:white; padding:30px; margin: 15px 0px 15px 30px; border: 1px solid #F2F2F2;">
			  	<h2 style="color:black; padding: 15px 10px 6px 10px;">정보 입력하기</h2>
			  	<p style="color:black; font-size:13px; padding: 0px 10px 10px 10px;">포트폴리오에 추가하시려면 '+', 제거하시려면 '-'를 눌러주세요!</p>

			  </div>
			  <!-- 두번째 column -->
				<div class="column side category_input" id="right" style="background-color: white; margin: 15px 30px 15px 0px; padding:30px;  border-radius: 15px; margin-left: 30px;border: 2px solid #F9CA03;">
					<h2 style="color:black; padding: 15px 10px 6px 10px;">포트폴리오에 들어갈 항목</h2>
			  		
					<form method="post" action="portfolio_two" id="myForm" enctype="multipart/form-data">
						<input type="hidden" id="select_template_id" name="template_id" value="1" readonly/>
						<input type="hidden" id="select_template_html" name="template_html" value="template2" readonly/>
						<input type="hidden" id="portfolio_id" name="portfolio_id" value="${portfolio_id}" readonly/>
						<!-- <input type="hidden" id="portfolio_name" name="portfolio_name" value="${portfolio_name}" readonly/> -->
						
						
						<!-- 포트폴리오에 들어갈 데이터 div가 들어갈 공간 -->
						
					</form>
				</div>
				<!-- 두번째 column end -->
			</div>
		</div>
	</div>
    </div>
    <div class="plus_comment" id="plus_comment" style="display: flex; justify-content: center;"></div>
    <div style="display: flex; justify-content: center;">
		<button type="button" class="preview" name=preview id="previewB" onclick="">미리보기</button>
		<button type="button" class="store_data" name=store id="storeB" onclick="">저장</button>
    </div>	
	</main>
	
	
	<script>
	
		var item_content=${item_list};
		var past_categoryID=0;
	
		//left side에 div 넣기 
			for(var i=0; i < item_content.length; i++){

		  	//category 별로 div 만들기 저는 이런개발을 해왔어요
			if(past_categoryID != item_content[i].category_id){
	
			 	var newCategory=document.createElement('div');
			 	newCategory.className="category_gname";
			 	newCategory.innerHTML="<h4>"+item_content[i].category_name+"</h4>";
			 	$("div").children('#left').append(newCategory); //left side에 넣기
			 	
			 	past_categoryID=item_content[i].category_id;
			 	
			}
			
			//item 별로 div 넣기
			//div1 (div 2,3의 부모) 회색 전
			var newItem=document.createElement('div');
			newItem.className="category";
			newItem.id="category"+item_content[i].item_id;
			$("div").children('#left').append(newItem);
	
			//div2 (item 이름 / div3이랑 형제) 깃헙주소,개발경험...
			var innerItemName=document.createElement('div');
			innerItemName.className="categoryName";
			innerItemName.id="category_name"+item_content[i].item_id;
			//innerItemName.innerHTML="<div class='item_name'><h5 style='display:inline;'>"+item_content[i].item_name+"</h5></div> <div class='empty'></div> <span class='more'><a class='blind'>▼</a></span> <div class='board'> <a href=#none id='plus_"+item_content[i].item_id+"' onclick='actionB("+item_content[i].item_id+")'>이전데이터</a> <a href=#none id='plus_"+item_content[i].item_id+"' onclick='actionPlus("+item_content[i].item_id+")'>+</a> </div>";
			//innerItemName.innerHTML="<h5 style='display:inline;'>"+item_content[i].item_name+"</h5> <a href=#none id='plus_"+item_content[i].item_id+"' onclick='actionPlus("+item_content[i].item_id+")'>+</a> <a href=# id='last+"+item_content[i].item_id+"' onclick='actionB("+item_content[i].item_id+")'>이전데이터</a>";		
			$("div").children('#category'+item_content[i].item_id).append(innerItemName); 	

			//div2-1
			var innerItemName1 =document.createElement('div');
			innerItemName1.className="item_name";
			innerItemName1.innerHTML="<h5 style='display:inline;'>"+item_content[i].item_name+"</h5>";
			$("div").children("#category_name"+item_content[i].item_id).append(innerItemName1); 	
			
			//div2-2
			var innerItemName2 = document.createElement('div');
			innerItemName2.className="more";
			innerItemName2.id = "plus_"+item_content[i].item_id;
			$("div").children("#category_name"+item_content[i].item_id).append(innerItemName2); 	
			$("#plus_"+item_content[i].item_id).append('<button type="button" class="blind" id="show_more'+item_content[i].item_id+'" onclick="buttonE(id,'+item_content[i].item_id+')">▼</button>');

			//div2-4
			var innerItemName4 = document.createElement('div');
			innerItemName4.className="board2";
			innerItemName4.id = "plus_"+item_content[i].item_id+"_board2";
			innerItemName4.setAttribute("style","display: none");
			innerItemName4.innerHTML="<button href=#none id='plus_"+item_content[i].item_id+"' onclick='actionPlus("+item_content[i].item_id+")'>+ 새 데이터 입력</button>";
			$("div").children("#category_name"+item_content[i].item_id).append(innerItemName4); 

			//div2-3
			var innerItemName3 = document.createElement('div');
			innerItemName3.className="board1";
			innerItemName3.id = "plus_"+item_content[i].item_id+"_board";
			innerItemName3.setAttribute("style","display: none");
			innerItemName3.innerHTML="<a href=#none id='plus_"+item_content[i].item_id+"' onclick='actionB("+item_content[i].item_id+")'>이전데이터 불러오기</a>";
			$("div").children("#category_name"+item_content[i].item_id).append(innerItemName3); 
			
			//div3 (모든 Input을 묶어주는 div) 
			var allInnerItem=document.createElement('div');
			allInnerItem.className="showDetail";
			allInnerItem.id="show_"+item_content[i].item_id;
			$("div").children('#category'+item_content[i].item_id).append(allInnerItem); 	
	
		}
		//left side에 div 넣기 끝
		

		past_categoryID=0;
		//right side에 div 넣기 
		for(var i=0; i < item_content.length; i++){

			//category 별로 div 만들기
			if(past_categoryID != item_content[i].category_id){
	
			 	var newCategory=document.createElement('div');
			 	newCategory.className="category_gname";
			 	newCategory.innerHTML="<h4>"+item_content[i].category_name+"</h4>";
			 	newCategory.id="category_gname_"+item_content[i].category_id;

			 
			 	
			 	past_categoryID=item_content[i].category_id;
			 	$("div").children('#myForm').append(newCategory); //right side에 넣기
			 	
			 	if(item_content[i].category_id==1){
			 		var newItem3=document.createElement('div');
					newItem3.className="categoryin";
					newItem3.id="categoryin_0";
					newItem3.setAttribute("style","display: block");
					$("div").children('#myForm').append(newItem3);
			 		
			 		newItem3.innerHTML='<div class="category_title"><div style="background-color: #f2f2f2; color:black; margin: 0px 10px; width: 98.5%; padding: 1px 10px; margin-top: 5px;"><h5>이름 / 연락처</h5></div><div class="detail" style="background-color:#f9edbd; margin-left: 10px; padding: 8px; overflow:auto; margin-bottom: 2px;"><input type="text" value="${Name}" style="width:20%; margin-bottom:3px; padding: 8px; border-radius: 40px; border: 1px solid #CCCCCC; font-weight: 400;" readonly/><input type="text" value="${email}" style="width:38%; margin-bottom:3px; padding: 8px; border-radius: 40px; border: 1px solid #CCCCCC; font-weight: 400;" readonly/><input type="text" value="${phone}" style="width:38%; margin-bottom:3px; padding: 8px; border-radius: 40px; border: 1px solid #CCCCCC; font-weight: 400;" readonly/></div></div>';
				}
				
			}
	  		
			//item 별로 div 넣기
			//div4 (div 5,6의 부모)
			var newItem2=document.createElement('div');
			newItem2.className="categoryin";
			newItem2.id="categoryin_"+item_content[i].item_id;
			newItem2.setAttribute("style","display: none");
			$("div").children('#myForm').append(newItem2);

			
			//div5 (item 이름 / div6이랑 형제 ) 
			var innerItemName2=document.createElement('div');
			innerItemName2.className="category_title";
			innerItemName2.innerHTML="<div style='background-color: #f2f2f2; width: 100%; padding: 1px 10px; margin-top: 2px;'><h5>"+item_content[i].item_name+"</h5></div>";
			$("#categoryin_"+item_content[i].item_id).append(innerItemName2); 	
			
			//div6 (모든 Input을 묶어주는 div /item inputs 넣기) 
			var allInnerItem2=document.createElement('div');
			allInnerItem2.id="show"+item_content[i].item_id+"box_in";
			allInnerItem2.setAttribute("style","display: block");
			$('#categoryin_'+item_content[i].item_id).append(allInnerItem2); 	
	
		}
		//right side에 div 넣기 끝
			

		//이거 사용 (item에서 이전 데이터 보기 눌렀을 때)
		function actionB(id){

			var item_data;
			var item_content;
			var option_list;
			
	      $.ajax({
		      url : '<%=request.getContextPath()%>/pastData',
		  	  type : "post",
		  	  data:{
			  	  item_id:id
			  	  },
		  	  async: false,
		  	  success: function(data){
					console.log("이전 데이터 불러오기 성공");
					item_data=data;			
		  	  }
		   });
		   
	  	$.ajax({
		      url : '<%=request.getContextPath()%>/newData',
		  	  type : "post",
		  	  data:{item_id:id},
		  	  dataType : 'json',
		  	  async: false,
		  	  success: function(data){
		  		item_content=data;
		  		console.log("이전 인풋 박스 정보 불러오기 성공");

		  		console.log("test data!");
			  	console.log(item_data);
			  	console.log("test input info!");
			  	console.log(item_content);

				var fields_id=item_content[0].field_id;
			  	if(item_content[0].field_type=="select"){
				  	
					$.ajax({
					      url : '<%=request.getContextPath()%>/optionList',
					  	  type : "post",
					  	  data:{field_id:fields_id},
					  	  dataType : 'json',
					  	  async: false,
					  	  success: function(data){
						  	 option_list = data;
					  		console.log("select option 불러오기 성공");
					  		console.log(option_list); 	
					  		
					  	  }
					});
			  	}
			  	
						 console.log("test option!");
						  	console.log(option_list); 	  
			  	for(idx=0;idx<item_data.length;idx++){

			  		//div4 (큰 div -div2,3의 부모)
			  		var innerItem=document.createElement('div');
					innerItem.className="detail";
					innerItem.id="detail_"+id+"_"+count;
					
					$("div").children('#show_'+id).append(innerItem); 	
	
					
					//div5 (input div - div3과 형제)
					var innerItemInput=document.createElement('div');
					innerItemInput.className="detail_input";
					innerItemInput.id="input_"+id+"_"+count;
					
					$("div").children('#detail_'+id+'_'+count).append(innerItemInput); 
	
					//div6 (button div - div2과 형제)
					var innerItemButton=document.createElement('div');
					innerItemButton.className="detail_button";
					innerItemButton.id="button_"+id+"_"+count;
					
					$("div").children('#detail_'+id+'_'+count).append(innerItemButton); 

				
					//div 만듦
					
					//hidden(item_id)
					$('#input_'+id+'_'+count).append('<input type="hidden" name="item_id" class="item_id"  value="'+item_content[0].item_id+'" readonly/>');
					
			  		for(var i=0; i<6; i++){
	
				  		if(i<item_content[0].data_no){
	
					  		if(item_content[i].field_type=="date"){
	
						  		//date input
					  			var input=document.createElement("input");
					  			input.className="item_input";
					  			input.id="item_input_"+count+"_"+item_content[i].field_type;
					  			input.setAttribute("data-placeholder",item_content[i].field_name);
					  			input.setAttribute("area-required","true");
					  			input.setAttribute("name","content"+(i+1));
					  			input.setAttribute("type","month");
					  			//input.setAttribute("value","2020-11");
	
					  			if(i==0)
					  				input.setAttribute("value",item_data[idx].content1);
					  			else if (i==1)
					  				input.setAttribute("value",item_data[idx].content2);
					  			else if(i==2)
					  				input.setAttribute("value",item_data[idx].content3);
					  			else if(i==3)
					  				input.setAttribute("value",item_data[idx].content4);
					  			else if(i==4)
					  				input.setAttribute("value",item_data[idx].content5);
					  			else if(i==5)
					  				input.setAttribute("value",item_data[idx].content6);
	
					  			$('#input_'+id+"_"+count).append(input);
	
						  	}
					  		else if(item_content[i].field_type=="range"){
	
					  		//range input
					  			var input=document.createElement("input");
					  			input.className="item_input";
					  			input.id="item_input_"+count+"_"+item_content[i].field_type;
					  			input.setAttribute("name","content"+(i+1));
					  			input.setAttribute("type","range");
					 
					  			$('#input_'+id+"_"+count).append(input);
					  			
					  			if(i==0)
					  				input.setAttribute("value",item_data[idx].content1);
					  			else if (i==1)
					  				input.setAttribute("value",item_data[idx].content2);
					  			else if(i==2)
					  				input.setAttribute("value",item_data[idx].content3);
					  			else if(i==3)
					  				input.setAttribute("value",item_data[idx].content4);
					  			else if(i==4)
					  				input.setAttribute("value",item_data[idx].content5);
					  			else if(i==5)
					  				input.setAttribute("value",item_data[idx].content6);
								
						  	}
					  		else{
	
						  		//text input
					  			var input=document.createElement(item_content[i].field_type);
					  			input.className="item_input";
					  			input.id="item_input_"+count+"_"+item_content[i].field_type;
					  			input.setAttribute("placeholder",item_content[i].field_name);
					  			input.setAttribute("name","content"+(i+1));
					  			input.setAttribute("type","text");
	
					  			$('#input_'+id+"_"+count).append(input);
	
					  			if(item_content[i].field_type=="textarea"){
					  				if(i==0)
					  					input.innerHTML = item_data[idx].content1;		
						  			else if (i==1)
					  					input.innerHTML = item_data[idx].content2;		
						  			else if(i==2)
					  					input.innerHTML = item_data[idx].content3;		
						  			else if(i==3)
					  					input.innerHTML = item_data[idx].content4;		
						  			else if(i==4)
					  					input.innerHTML = item_data[idx].content5;		
						  			else if(i==5)
					  					input.innerHTML = item_data[idx].content6;		
						  		}
					  			
						  		if(item_content[i].field_type=="input"){
						  				if(i==0)
							  				input.setAttribute("value",item_data[idx].content1);
							  			else if (i==1)
							  				input.setAttribute("value",item_data[idx].content2);
							  			else if(i==2)
							  				input.setAttribute("value",item_data[idx].content3);
							  			else if(i==3)
							  				input.setAttribute("value",item_data[idx].content4);
							  			else if(i==4)
							  				input.setAttribute("value",item_data[idx].content5);
							  			else if(i==5)
							  				input.setAttribute("value",item_data[idx].content6);
							  	}
					  			
						  		
									if(item_content[i].field_type == "select"){
		
										$('#item_input_'+count+'_select').empty();
										for( j=0; j < option_list.length; j++){
														
														var OPT = document.createElement('OPTION');
														OPT.innerHTML = option_list[j].list_name;
		
														if(option_list[j].list_name == item_data[idx].content1)
															OPT.setAttribute("selected","selected");
													
														$('#item_input_'+count+"_"+item_content[i].field_type).append(OPT);
										}
										  	    
								     }//if문 (field_type이 select일 경우 option 넣어주기)
					  		}//else문 (date가 아닐 경우)
				  		}
				  		else{
				  			$('#input_'+id+"_"+count).append('<input type="hidden" class="item_input" name="content'+(i+1)+'" value="" readonly/>');
					  	}
						
					}//for문-content input박스 만들기 
				
					//button
					//포트폴리오에 추가 버튼
					$("#button_"+id+"_"+count).append('<button type="button" name="move" class="inButton" id="item_plusbutton_'+item_content[0].item_id+'_'+count+'" style="float:left; padding: 5px; width:45px; margin-right: 3px; border-radius: 40px; font-weight: 450; background-color: #F9CA03; color: white; font-size: 22px; border: 3px solid #F9CA03;" onclick="addData(id,'+item_content[0].item_id+')">+</button>');
	
					//x버튼
					var jbBtn = document.createElement( 'a' );
				    jbBtn.id='minus';
				    jbBtn.setAttribute("style", "float:left; cursor: pointer; text-align:right; font-size:22px; width:7%; padding: 8px 0 8px 8px; border-radius: 50px; font-weight: 800; color: #333333");
				    jbBtn.setAttribute("name","minus");
				    jbBtn.setAttribute("class","deleteButton");
		
			        var jbBtnText = document.createTextNode( 'x' );
			        jbBtn.appendChild( jbBtnText );
			        jbBtn.onclick = function () {
			    	 	var del =$(this).parent().parent();
				        del.remove();
			        };	
					$("#button_"+id+"_"+count).append(jbBtn);
					//x버튼 끝
	
					
			  		count++;
			  	}//for문-최신 데이터 3개 불러오기 
		  	  }//success

		 });

	    }
		
		var count=0;
		//이거 사용 (item에서 새 항목 추가할 때)
		function actionPlus(id){
			var item_content;
			var option_list;
			
			
			$.ajax({
			      url : '<%=request.getContextPath()%>/newData',
			  	  type : "post",
			  	  data:{item_id:id},
			  	  dataType : 'json',
			  	  async: false,
			  	  success: function(data){
			  		item_content=data;
			  		

			  		//div1 (큰 div -div2,3의 부모) detail id. 
			  		var innerItem=document.createElement('div');
					innerItem.className="detail";

					innerItem.id="detail_"+id+"_"+count;
					
					
					$("div").children('#show_'+id).append(innerItem); 	

					
					//div2 (input div - div3과 형제) input만 
					var innerItemInput=document.createElement('div');
					innerItemInput.className="detail_input";
					innerItemInput.id="input_"+id+"_"+count;
					
					$("div").children('#detail_'+id+'_'+count).append(innerItemInput); 

					//div3 (button div - div2과 형제)
					var innerItemButton=document.createElement('div');
					innerItemButton.className="detail_button";
					innerItemButton.id="button_"+id+"_"+count;
					
					$("div").children('#detail_'+id+'_'+count).append(innerItemButton); 

					
					//div 만듦
					
					//hidden(item_id)
					if(item_content[0].item_id != 1)
						$('#input_'+id+'_'+count).append('<input type="hidden" name="item_id" class="item_id" value="'+item_content[0].item_id+'" readonly/>');
					else
						$('#input_'+id+'_'+count).append('<input type="hidden" name="item_file" class="item_id" value="'+item_content[0].item_id+'" readonly/>');
					
					/*var hiddenInput=document.createElement('input');
						hiddenInput.className="item_id";
			  			hiddenInput.setAttribute("name","item_id");
			  			hiddenInput.setAttribute("type","hidden");*/
					
			  		for(var i=0; i<6; i++){

			  			if(i<item_content[0].data_no){
				  		if(item_content[i].field_type=="date"){
					  		//date input
				  			var input=document.createElement("input");
				  			input.className="item_input";
				  			input.id="item_input_"+count+"_"+item_content[i].field_type;
				  			input.setAttribute("data-placeholder",item_content[i].field_name);
				  			input.setAttribute("area-required","true");
				  			input.setAttribute("name","content"+(i+1));
				  			input.setAttribute("type","month");
				  			$('#input_'+id+"_"+count).append(input);

					  	}
				  		else if(item_content[i].field_type=="range"){
				  			//range input
				  			var input=document.createElement("input");
				  			input.className="item_input";
				  			input.id="item_input_"+count+"_"+item_content[i].field_type;
				  			
				  			input.setAttribute("name","content"+(i+1));
				  			input.setAttribute("type","range");
				  			$('#input_'+id+"_"+count).append(input);
				  			
					  	}else if(item_content[i].field_type=="file"){
				  			//file input
				  			var input=document.createElement("input");
				  			input.className="item_input";
				  			input.id="item_input_"+count+"_"+item_content[i].field_type;
				  			
				  			input.setAttribute("name","file1");
				  			input.setAttribute("type","file");
				  			$('#input_'+id+"_"+count).append(input);
				  			break;
					  	}
				  		else{
				  			var input=document.createElement(item_content[i].field_type);
				  			input.className="item_input";
				  			input.id="item_input_"+count+"_"+item_content[i].field_type;
				  			input.setAttribute("placeholder",item_content[i].field_name);
				  			input.setAttribute("name","content"+(i+1));
				  			input.setAttribute("type","text");
				  			$('#input_'+id+"_"+count).append(input);
				  			
					  		
							if(item_content[i].field_type=="select"){
	
								var fields_id=item_content[i].field_id;
								$('#item_input_'+count+"_"+item_content[i].field_type).empty();
	
								$.ajax({
								      url : '<%=request.getContextPath()%>/optionList',
								  	  type : "post",
								  	  data:{field_id:fields_id},
								  	  dataType : 'json',
								  	  async: false,
								  	  success: function(data){
											option_list=data;
									  	    //console.log(data);
											for(var j=0; j<Object.keys(data).length;j++){
												var OPT = document.createElement('OPTION');
												OPT.innerHTML = option_list[j].list_name;
												
												$('#item_input_'+count+"_"+item_content[i].field_type).append(OPT);
											}
									  	    
								  	  }
								 }); 	 
	
							}//if문 (field_type이 select일 경우 option 넣어주기)
				  		}//else문 (date가 아닐 경우)
			  			}else{
						$('#input_'+id+"_"+count).append('<input type="hidden" class="item_input" name="content'+(i+1)+'" value="" readonly/>');
					  	}
						
					}//for문
					

					//button
					//포트폴리오에 추가 버튼
					$("#button_"+id+"_"+count).append('<button type="button" name="move" class="inButton" id="item_plusbutton_'+item_content[0].item_id+'_'+count+'" style="float:left; padding: 5px; width:45px; margin-right: 3px; border-radius: 40px; font-weight: 450; background-color: #F9CA03; color: white; font-size: 22px; border: 3px solid #F9CA03;" onclick="addData(id,'+item_content[0].item_id+')">+</button>');

					//x버튼
					var jbBtn = document.createElement( 'a' );
				    jbBtn.id='minus';
				    jbBtn.setAttribute("style", "float:left; cursor: pointer; text-align:right; font-size:22px; width:7%; padding: 8px 0 8px 8px; border-radius: 50px; font-weight: 800; color: #333333");
				    jbBtn.setAttribute("name","minus");
				    jbBtn.setAttribute("class","deleteButton");
		
			        var jbBtnText = document.createTextNode( 'x' );
			        jbBtn.appendChild( jbBtnText );
			        jbBtn.onclick = function () {
			    	 	var del =$(this).parent().parent();
				        del.remove();
			        };	
					$("#button_"+id+"_"+count).append(jbBtn);
					//x버튼 끝

					
			  		count++;
					
			  	  }//success

			 });

			
	     }

	     
	     
		$(function() {
			$('ul.tab li:not(.tab0)').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});

	

	
	
		//포트폴리오에 넣을 데이터 고르기 (이거 사용)
		function addData(id,itemID){

			var elem = document.getElementById(id);
			
			var parent =$("#"+id).parent().parent().attr('id');
			console.log(parent);
			var parent_box=document.getElementById(parent);

			if (elem.innerText === "+") {
				elem.innerText = "-";
				$("#"+id).next().hide();
				
				var ID= "show"+itemID+"box_in";
				var InDiv=document.getElementById(ID);
				$(InDiv).append(parent_box);

				$('#'+parent).find('input').prop('readonly', true);
				$('#'+parent).find('textarea').prop('readonly', true);
				//$('#'+parent+' option').attr('disabled', true);
				
				if($("#categoryin_"+itemID).css("display") == "none")
					$("#categoryin_"+itemID).show();

				

			}else {
				elem.innerText = "+";
				//$("#"+id).next().css({"display": "inline-block"});
				$("#"+id).next().show();
				var ID= 'show_'+itemID;
				var InDiv=document.getElementById(ID);

				$('#'+parent).find('input').prop('readonly', false);
				$('#'+parent).find('textarea').prop('readonly', false);
				//$('#'+parent+'.option').attr('disabled', false);
				
				InDiv.insertBefore(parent_box,InDiv.firstChild);

				var ele = document.getElementById("show"+itemID+"box_in");
				var eleCount = ele.childElementCount;

				if(eleCount==0)
					$("#categoryin_"+itemID).hide();
				//$(InDiv).append(parent_box);
			}
			
	     }

	      $(document).on("click","#minus",function(){
	        var del =$(this).parent().parent();
	        del.remove();
	      });

	      function buttonE(id,item_id){
			
	    	  var elem = document.getElementById(id);
	    		 
	    	  var divB = document.getElementById("plus_"+item_id+"_board");
	    	  var divC= document.getElementById("show_"+item_id);
	    	  var divD= document.getElementById("plus_"+item_id+"_board2");
	    	  //divB.setAttribute("style","display: block");
	    	  if(divB.style.display == "none"){ 
	    		  divB.style.display = "block";
	    		  divC.style.display = "block";
	    		  divD.style.display = "block";
	    		  $("#plus_"+item_id).attr('class','close');
	    		  elem.innerHTML= "▲";
		      } 
		      else { 
		    	  divB.style.display = "none";
		    	  divC.style.display = "none";
		    	  divD.style.display = "none";
		    	  $("#plus_"+item_id).attr('class','more');
		    	  elem.innerHTML= "▼";
			  }

	    	  }

	      $(document).ready(function() {
	    	  $("#previewB").click(function() {
		    	   
	    		  var template_id=document.getElementById('select_template_id').value;
		    		var item_id = document.querySelector(".category_input").getElementsByClassName("item_id");
					console.log(item_id.length);
			

		    		if(item_id.length==0){
		    			$('#plus_comment').text('포트폴리오에 넣을 정보를 입력해주세요');
						$('#plus_comment').css('color','red');
			    	}
		    		else{
		    			window.open('', 'port_view', 'width=400,height=400,resizeable,scrollbars');
			    		$("#myForm").attr("action", "preview");
			    		$("#myForm").attr("target", "port_view");
				    	$("#myForm").submit();
			    	}
		    	   
		       });
		       

		      
		       $("#storeB").click(function() {
		    	// 배열을 선언한다.
		    		var template_id=document.getElementById('select_template_id').value;
		    		var item_id = document.querySelector(".category_input").getElementsByClassName("item_id");
					console.log(item_id.length);
					
					if(item_id.length==0){
		    			$('#plus_comment').text('포트폴리오에 넣을 정보를 입력해주세요');
						$('#plus_comment').css('color','red');
			    	}
		    		else{
		    		   $("#myForm").attr("action", "portfolio_two");
			           $("#myForm").attr("target", "");
			           $("#myForm").submit();
		    		}
		       });
		    	 
		    });

	      
	</script>
</body>
</html>