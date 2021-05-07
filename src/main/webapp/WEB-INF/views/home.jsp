<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" style="font-size: 16px;">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="WHO SAID EDUCATION WAS BORING?, Best Pre School Education!, Service We Provide, Innovative Methodsof Teaching, Best Pre School Education!, Make your Children's life Special, Relaxation and comfort">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>home</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/home.css" media="screen">
    
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/mypage.js?ver=1"></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=NanumGothic:400,700,800"> 
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
}</script>
    <meta property="og:title" content="home">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">

    <title>Wanana</title>
    
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <script>

    $(document).ready( function(){
        
    	function getContextPath() {
    	    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    	    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1));
    	};

    	function loginAlert() {
    		alert("로그인 후 이용해주세요!");
    	};
    	
    	//session 정보 가져오기 
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

    	//session 값 확인
    	if(check_sessionID == null || check_sessionID == ""){
        	//session 값이 없을 시 
        	console.log("session info" +check_sessionID);
        	
        	//nav bar 설정 변경
        	$('.1page_login').attr("href", getContextPath()+"/login");
        	$('.1page_login').attr("onclick", "javascript:alert('로그인 후 이용해주세요!')"); 
        	
        	//logout 메뉴 지우기 
        	$("#1page_logoutMenu1").css("display", "none");
        	$("#1page_logoutMenu2").css("display", "none");
        	$("#1page_logoutMenu3").css("display", "none");
        	$("#1page_logoutMenu4").css("display", "none");
        	
        	//바로가기 링크 재설정 
        	$('#1page_link').attr("href", getContextPath()+"/login");
        	$('#1page_link').attr("onclick", "javascript:alert('로그인 후 이용해주세요!')"); 	
    	}
        });

    </script>
</head>
<body class="u-backlink-hidden u-body">
<jsp:include page="/WEB-INF/views/basic/header.jsp"/>
      
    <section class="u-clearfix u-white u-section-1" id="sec-fad6">
      <div class="u-clearfix u-sheet u-sheet-1" style="margin-top:-40px;">
        <div class="u-align-left u-container-style u-expanded-width-xs u-group u-similar-fill u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <p class="u-custom-font u-enable-responsive u-text u-text-1">
              <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="<%=request.getContextPath()%>" data-page-id="425530424">
                <span class="u-text-custom-color-1">One</span>
                <span class="u-text-black" style="">하나</span>
              </a>
            </p>
            <h2 class="u-custom-font u-text u-text-2">원페이지<br>포트폴리오
            </h2>
            <c:set var="port_count" value='<%=request.getAttribute("portCount")%>' />
            <h5 class="u-custom-font u-text u-text-3">예쁜 포트폴리오를 손쉽게 만들어보세요 !</h5>
            <div class="u-container-style u-custom-color-1 u-group u-radius-21 u-shape-round u-group-2"  <c:if test="${port_count >= 5}" var="portfolio"> onClick="createAlert();" </c:if> <c:if test="${port_count < 5}" var="portfolio"> data-href="<%=request.getContextPath()%>/portfolio_one" data-page-id="266091356" </c:if>>
              <%-- <a id ="1page_link"  href="<%=request.getContextPath()%>/portfolio_one"> --%>
              <div class="u-container-layout u-valign-top-lg u-valign-top-md u-valign-top-xl u-valign-top-xs u-container-layout-2">
              
                <p class="u-align-center u-custom-font u-text u-text-body-alt-color u-text-4" style="padding-left:-200px;text-align: center;">포트폴리오 만들기 바로가기</p>
              </div>
              </a>
            </div>
          </div>
        </div>
        <img class="u-image u-image-round u-radius-36 u-image-1" src="<%=request.getContextPath()%>/resources/images/33.png">
        <img class="u-image u-image-round u-radius-27 u-image-2" src="<%=request.getContextPath()%>/resources/images/321.png" data-image-width="472" data-image-height="725">
      </div>
    </section>
    
    

   <jsp:include page="/WEB-INF/views/basic/footer.jsp"/>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
  </body>
</html>