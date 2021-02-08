<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
        	
        	//바로가기 링크 재설정 
        	$('#1page_link').attr("href", getContextPath()+"/login");
        	$('#1page_link').attr("onclick", "javascript:alert('로그인 후 이용해주세요!')"); 	
    	}

        });

    </script>
</head>
<body class="u-backlink-hidden u-body"><header class="u-clearfix u-header u-header" id="sec-bbf7"><div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
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
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black 1page_login"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/portfolios"/>Portfolios</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black 1page_login"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY 페이지</a>	
				</li>
				<li id="1page_logoutMenu1" class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>
					</li>
				
			</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul  class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                	<li class="u-nav-item">
                		<a class="u-button-style u-nav-link maker 1page_login"  style="padding: 10px 20px;"  href="<%=request.getContextPath()%>/portfolios">Portfolios</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link 1page_login"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY 페이지</a>
					</li>
					<li id="1page_logoutMenu2" class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>
					</li>
				</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="<%=request.getContextPath()%>/home" data-page-id="425530424">
            <span class="u-text-custom-color-1">One</span>
            <span class="u-text-black">하나</span>
          </a>
        </p>
      </div></header> 
      
      
    <section class="u-clearfix u-white u-section-1" id="sec-fad6">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-left u-container-style u-expanded-width-xs u-group u-similar-fill u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <p class="u-custom-font u-enable-responsive u-text u-text-1">
              <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="<%=request.getContextPath()%>/home" data-page-id="425530424">
                <span class="u-text-custom-color-1">One</span>
                <span class="u-text-black" style="">하나</span>
              </a>
            </p>
            <h2 class="u-custom-font u-text u-text-2">원페이지<br>포트폴리오
            </h2>
            <h5 class="u-custom-font u-text u-text-3">예쁜 포트폴리오를 손쉽게 만들어보세요 !</h5>
            <div class="u-container-style u-custom-color-1 u-group u-radius-21 u-shape-round u-group-2" data-href="<%=request.getContextPath()%>/portfolio_one" data-page-id="266091356">
              <a id ="1page_link"  href="<%=request.getContextPath()%>/portfolio_one">
              <div class="u-container-layout u-valign-top-lg u-valign-top-md u-valign-top-xl u-valign-top-xs u-container-layout-2">
                <p class="u-align-center u-custom-font u-text u-text-body-alt-color u-text-4" style="padding-left:-200px;">포트폴리오 만들기 바로가기</p>
                <span class="u-icon u-icon-circle u-text-white u-icon-1">
                	<svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 492.004 492.004" style="">
                		<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-abcc"></use>
                	</svg>
                	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 492.004 492.004" x="0px" y="0px" id="svg-abcc" style="enable-background:new 0 0 492.004 492.004;">
                	<g><g>
                	<path d="M382.678,226.804L163.73,7.86C158.666,2.792,151.906,0,144.698,0s-13.968,2.792-19.032,7.86l-16.124,16.12    c-10.492,10.504-10.492,27.576,0,38.064L293.398,245.9l-184.06,184.06c-5.064,5.068-7.86,11.824-7.86,19.028    c0,7.212,2.796,13.968,7.86,19.04l16.124,16.116c5.068,5.068,11.824,7.86,19.032,7.86s13.968-2.792,19.032-7.86L382.678,265    c5.076-5.084,7.864-11.872,7.848-19.088C390.542,238.668,387.754,231.884,382.678,226.804z">
                	</path>
					</g></g>
				</svg>
				</span>
              </div>
              </a>
            </div>
          </div>
        </div>
        <img class="u-image u-image-round u-radius-36 u-image-1" src="<%=request.getContextPath()%>/resources/images/33.png">
        <img class="u-image u-image-round u-radius-27 u-image-2" src="<%=request.getContextPath()%>/resources/images/321.png" data-image-width="472" data-image-height="725">
      </div>
    </section>
    
  
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2994"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-custom-font u-small-text u-text u-text-variant u-text-1">경상북도 포항시 북구 흥해읍 한동로 558 한동대학교 WALAB<br>Copyright ⓒ <b>널주아해</b>
        </p>
        <p>Real Main Page</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
  </body>
</html>