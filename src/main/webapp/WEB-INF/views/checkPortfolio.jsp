<!--템플릿 jsp에 개인정보를 집어넣은 페이지-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
  
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
      
	<!-- 한글 폰트 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Black+Han+Sans&family=Cute+Font&family=Do+Hyeon&family=Dokdo&family=East+Sea+Dokdo&family=Gaegu&family=Gamja+Flower&family=Gothic+A1:wght@200&family=Gugi&family=Hi+Melody&family=Jua&family=Kirang+Haerang&family=Nanum+Brush+Script&family=Nanum+Gothic&family=Nanum+Gothic+Coding&family=Nanum+Myeongjo&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@300&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Single+Day&family=Song+Myung&family=Stylish&family=Sunflower:wght@300&family=Yeon+Sung&display=swap" rel="stylesheet">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
  </head>

<body class="u-body">
	<header class="u-clearfix u-header u-header" id="sec-bbf7"><div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse u-custom-font" style="font-size: 1rem; letter-spacing: 0px; font-family: NanumGothic; font-weight: 800;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-custom-font u-nav u-unstyled u-nav-1">
            	<li class="u-nav-item">
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/portfolios" style="padding: 10px 20px;">Portfolios</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/myPage" style="padding: 10px 20px;">MY 페이지</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px; cursor:pointer;" href="">로그아웃</a>	
				</li>
			</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                	<li class="u-nav-item">
                		<a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/portfolio_one" style="padding: 10px 20px;">Portfolios</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/myPage" style="padding: 10px 20px;">MY 페이지</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px; cursor:pointer;" href="">로그아웃</a>
					</li>
				</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="home.html" data-page-id="425530424">
            <span class="u-text-custom-color-1">One</span>
            <span class="u-text-black">하나</span>
          </a>
        </p>
      </div></header>
	 <%
	 String templateURL ="/WEB-INF/views/templates/"+request.getAttribute("temName")+".jsp";
	 %>
	 <main>
	 	<div class="wrap" style="width:100%; position:relative;">
	 		<div style="display:block; margin:0 auto;">
	 			<div id="printSection" style="float:left; margin-right: 15px; padding-left: 22px;">
	 			 <!-- <page size="A4" layout="portrait">  -->
				 <page size="A4">
		     		<jsp:include page="<%=templateURL%>" flush="true"/>
		     	</page>
				</div>
				<div id="button_wrap" style="display:flex;">
					<div style="flex-direction:column;">
				    	<button type="button" class="home" name="home" id="homeB" onclick="location.href='<%=request.getContextPath()%>/home'">HOME</button>
				    	<button type="button" class="print" name="print" id="printB" onclick="javascript:printB();">출력 </button>
				    	<button type="button" class="delete" name="delete" id="deleteB" onclick="javascript:deleteB();">삭제 </button>
				    	<button type="button" class="edit" name="edit" id="editB" onclick="javascript:editB();" >수정 </button>
				    	<form id="deleteForm" name="deleteForm" class="deleteForm"  action="deletePortfolio" method="POST">
				    			<input type="hidden" id="select_portID" name="temName" value="${temName}"/>
								<input type="hidden" id="select_portID" name="select_portID" value="${portfolio_ID}"/>
						</form>
			    	</div>	
			    </div>	
	 		</div>
	 	</div>
	 	
	 </main>
	 
	 
	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2994"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-custom-font u-small-text u-text u-text-variant u-text-1">경상북도 포항시 북구 흥해읍 한동로 558 한동대학교 WALAB<br>Copyright ⓒ <b>널주아해</b>
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
    
    <script>
$(document).ready(function(){
  
  	//경로 구하는 법 
	function getContextPath() {
	    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1));
	};


});//document ready end
	//session 정보 가져오기 
	function sessionChecking() {
		var check_sessionID="";

		$.ajax({ 
		      url : '<%=request.getContextPath()%>/sessionCheck',
		  	  type : "POST",
		  	  dataType : 'json',
		  	  async: false,
		  	  success: function(data){
		  		
		  		console.log("세션 확인 성공");
		  		check_sessionID=data;
		  	  },error:function(jqXHR, textStatus, errorThrown){
	            console.log("세션 에러 발생~~ \n" + textStatus + " : " + errorThrown);
	        }
		 });
	
		if(check_sessionID == null || check_sessionID == ""){
	    	//session 값이 없을 시 
	    	console.log("session end");
	    	alert("세션이 만료되었습니다. 다시 로그인해주세요:)");
	    	location.href = "login";
	    	return 0;
		}else
			return 1;
	}

	//session 만료 확인
	sessionChecking();


function printB() {
		var resultYN = sessionChecking();
	if(resultYN == 1){
		 	var initBody = document.body.innerHTML;
		 	var g_oBeforeBody = document.getElementById('printSection').innerHTML;
		 
             window.onbeforeprint = function(){
                document.body.innerHTML = g_oBeforeBody;
            }
            window.onafterprint = function(){
                document.body.innerHTML = initBody;
            } 
            setTimeout(function() {
	            window.print(); 
	            window.close();
            }, 1000); 
	 }
       }

function deleteB() {
			var resultYN = sessionChecking();
			
			if(resultYN == 1){
			if (confirm("정말 삭제하시겠습니까??") == true){    //확인
			   		     document.deleteForm.submit();
			}else{   //취소
			   		     return false;
			}
	   		 }
    }

function editB() {
		var resultYN = sessionChecking();
			
			if(resultYN == 1){
	   	  		$("#deleteForm").attr("action","editPortfolio");
			$("#deleteForm").submit();
			}
	       }//edit 버튼
</script>
</body>
</html>