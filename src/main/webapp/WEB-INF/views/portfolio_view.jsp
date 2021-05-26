<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->  	
  	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="UTF-8">
    
	<title>Wanana Portfolio</title>
	
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
        <link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index.css">
        
       	<script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    	<script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
    	
	<link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/checkPortfolio.css" media="screen">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/home.css" media="screen">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/mypage.js?ver=1"></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">

      
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <style>
    	.table-content {
		  display: flex;
		  flex-direction: row;
		}
		
		.item {
		  flex: 1;
		}
		
    </style>
</head>
<body>
<header class="u-clearfix u-header u-header" id="sec-bbf7" style="padding-top:80px; padding-left:50px; height: 100px;">	
	        <div style="float:left;display:inline; padding-bottom: 10px;"><p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
	            <span class="u-text-custom-color-1">One</span>
	            <span class="u-text-black">하나</span>
	        </p></div>
	        <div style="float:left;border:2px solid #eec31b; border-radius: 10px; padding: 10px; display:inline;">
        		<a href="<%=request.getContextPath()%>" style="color:black; font-weight:bold;">더 많은 포트폴리오 보러가기 ➞</a>
			</div>
</header>
<%
	 String templateURL ="/WEB-INF/views/templates/"+request.getAttribute("temName")+".jsp";
	 %>
	 
	 <main style="display: table; margin-left: auto; margin-right: auto; margin-bottom: 15px; ">
	 	<div class="wrap" style="width:100%; position:relative;">
	 		<div style="display:block; margin:0 auto;">
	 			<div class="printSection" id="1page_preview" style="float:left; margin-right: 15px; padding-left: 22px;">
	 			 <!-- <page size="A4" layout="portrait">  -->
				
		     		<jsp:include page="<%=templateURL%>" flush="true"/>
		     	
				</div>
				
	 		</div>
	 	</div>
	 </main>

	
 <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2994">
    	<div class="u-clearfix u-sheet u-sheet-1" style="margin-top:-10px; margin-bottom:-6px;">
       		<p class="u-custom-font u-small-text u-text u-text-variant u-text-1" style="line-height:20px;">경상북도 포항시 북구 흥해읍 한동로 558 한동대학교 WALAB<br>Copyright ⓒ <b>널주아해</b></p>
      	</div>
     </footer>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
</body>
</html>