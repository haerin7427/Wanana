<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


  	<!-- jQuery -->
  	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="LOGIN">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Check</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index.css">
	<link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/checkPortfolio.css" media="screen">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
      
      <!--doughnut chart-->
	<script src="https://rendro.github.io/easy-pie-chart/javascripts/jquery.easy-pie-chart.js"></script>
    <script src="http://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
	<!-- 한글 폰트 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
</head>
<body>

		 <%
	 String templateURL ="/WEB-INF/views/templates/"+request.getAttribute("temName")+".jsp";
	 %>
	 <main class="portfolioBox" style="padding:10px;">
		 	
		 <div>
		 	<button type="button" class="good" name="good">좋아요</button>
		 	<button type="button" class="message" name="message">쪽지보내기</button>
		 </div>
	 
	 	<div class="wrap" style="width:100%; position:relative;">
	 		<div style="display:block; margin:0 auto;">
	 			<div id="printSection" style="float:left; margin-right: 15px; padding-left: 22px;">
	 			 <!-- <page size="A4" layout="portrait">  -->
				 <page size="A4">
		     		<jsp:include page="<%=templateURL%>" flush="true"/>
		     	</page>
				</div>
	 		</div>
	 	</div>
	 	
	 </main>
	 
</body>
</html>