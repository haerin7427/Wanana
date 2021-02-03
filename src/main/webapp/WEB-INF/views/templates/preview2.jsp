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

<style>
.aside, .header, .left, .right, #mypic, .aboutme, #contact, #interest,
	.name, .interests, #interest1, #interest2, #interest3, #chart,
	#coding_exp, #exps, #exp1, #exp2, #exp3, #exp4, #exp5,
	#free_one, #free_two, #free_three {
	border: 1px solid black;
}



.wrap {
	border: 1px solid black;
	display: flex;
	width: 1122px;
	height: 755px;
	background-color: white;
}

.aside {
	float: left;
	width: 23%;
	height: 100%;
	background-color: #2a2b2b;
}

.container {
	display: flex;
	flex-direction: column;
	width: 100%;
}

.header {
	display: flex;
	width: 100%;
	height: 15%;
	background-color: #efefef;
}

.main {
	display: flex;
	width: 100%;
	height: 100%;
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
}



.aboutme {
	padding: 230px 0 0 0;
	height: 450px;
}

#introduce {
	padding: 15px 0 0 0;
	color: white;
	font-size: 14px;
}

#contact {
	font-size: 12px;
	color: white;
	padding: 150px 0 0 0;
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

.strengths, #tecs {
	display: flex;

}

#interest1, #interest2, #interest3 {
	margin: 0 10px 0 0;
}

#tec, #exps {
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

#coding_exp {
	display: flex;
	height: 100%;
}

#exps {
	width: 100%;
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
    background-color: white;
    color: #727171;
    border: 1px solid gray;
    vertical-align:middle;
    border-radius: 40px;
    text-align: center;
    padding: 3px 15px;
    font-weight: 700;
    width: 100px;
    font-size: 15px;
}
.tech{
	border: 2px solid black;
	border-radius:40px;
}


@media print {
	.aside {background-color: #2a2b2b; !important; -webkit-print-color-adjust:exact;}
	.header{background-color: #efefef; !important; -webkit-print-color-adjust:exact;}
	
}
</style>

</head>
<body >

	<div class="wrap">
	
		<!-- 왼쪽 사이드 바  -->
		<div class="aside">
			<div id="mypic">
				<img class="imageicon" src="<%=request.getContextPath()%>/resources/images/default_userpic.png" width="175" alt=default_img">
			</div>
			
			<div style="display:block;" class="aboutme" id="item_2">
				<h4 style="color: #f5b433; font-size:18px; font-weight:800;">ABOUT ME</h4>
				
			</div>
			
			<div id="contact">

				<div class="phone">${phone}</div>
				<div class="email">${email}</div>
				<div class="github" id="item_5"></div>
				<div class="blog" id="item_6"></div>

			</div>
		</div>
		
		<!-- 메인 섹션 -->
		<div class="container">
		
			<!-- 메인 헤더 (희망 분야)  -->
			<div class="header">
			<!-- 희망 분야  -->
				<div class="interest">
					<h4 class="interest_title">희망분야</h4>
					<div class="interests" id="item_4"></div>
				</div>
				<div class="name" id="item_1">
					<h1 style="font-weight:800; padding-top: 23px; margin: auto 0;">${Name}</h1>
				</div>
			</div>

			 <!-- 포트폴리오 바디 -->
			<div class="main">

				<!-- 왼쪽 바디 -->
				<div class="main_column left" id="leftBody" style="padding: 15px;">
				
					<div id="education" >
						<h5 class="small_title" style="font-weight:700">학력</h5>
						<div class="educations" id="item_9"></div>
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
					
					</div>
					<div id="activities">
						<h5 class="small_title" style="font-weight:700">나의 활동</h5>
						<div class="activities" id="item_10"></div>
					</div>
				</div>

				<!-- 오른쪽바디 -->
				<div class="main_column right">
					<div id="tec">
						<h6 class="small_title" style="font-weight:700">테크닉</h6>
						<div class="tecs" id="item_7"></div>
					</div>
					
					<div id="coding_exp">
						<div id="exps">
							<h6 class="small_title" style="font-weight:700">개발경험</h6>
							<div class="exps" id="item_8"></div>
						</div>
					</div>
				</div>
				
			</div>
			
		</div>


</body>
</html>