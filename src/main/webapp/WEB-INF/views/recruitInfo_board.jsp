<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/recruit_home.css?ver=<%=System.currentTimeMillis()%>" media="screen">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
	
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js"></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js"></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jobData.js?ver=<%=System.currentTimeMillis()%>"></script>
        <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/List.js?ver=1"></script>
  </head>
  <body data-home-page="Home.html" data-home-page-title="Home" class="u-body">
  <header class="u-clearfix u-header u-header" id="sec-bbf7">
<div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
        <div class="table-content">
        <div class="item"></div>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse u-custom-font" style="font-size: 1rem; letter-spacing: 0px; font-family: NanumGothic; font-weight: 800;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                	<li class="u-nav-item">
                		<a class="u-button-style u-nav-link maker"  style="padding: 10px 20px;"  href="<%=request.getContextPath()%>/portfolio_board">Portfolio구경가기</a>
					</li>
					<li class="u-nav-item">
                		<a class="u-button-style u-nav-link maker"  style="padding: 10px 20px;"  href="<%=request.getContextPath()%>/recruit_info">직업탐색</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY페이지</a>
					</li>
					<c:set var="admin" value="${admin }" />
					<c:if test="${admin == 1}">
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>
					</li>
					</c:if>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>
					</li>
				</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
          <div class="u-custom-menu u-nav-container">
           <ul class="u-custom-font u-nav u-unstyled u-nav-1">
            	<li class="u-nav-item">
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/portfolio_board">Portfolio구경가기</a>
				</li>
				<li class="u-nav-item">
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/recruit_info">직업탐색</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY페이지</a>	
				</li>
				<c:set var="admin" value="${admin}" />
				<c:if test="${admin == 1}">
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>	
				</li>
				</c:if>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>	
				</li>
			</ul>
          </div>
        </nav>
        </div>
        <p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="home.html" data-page-id="425530424">
            <span class="u-text-custom-color-1">One</span>
            <span class="u-text-black">하나</span>
          </a>
        </p>
      </div></header>
    <section class="u-clearfix u-section-1" id="sec-cd98">
      <div class="u-clearfix u-sheet u-valign-bottom-lg u-valign-middle-xs u-sheet-1">
        <div class="u-container-style u-expanded-width u-group u-palette-1-light-3 u-group-1">
          <div class="u-container-layout u-valign-top-md u-valign-top-xs u-container-layout-1">
            <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-2">
              <div class="u-container-layout u-valign-middle-xs u-container-layout-2">
                <h2 class="u-text u-text-1 tema">테마별 찾기</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="jobList u-list u-repeater u-list-1" id="jobListBody">
          <!-- 직업분류 들어가는 div -->
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="carousel_400e">
      <div class="u-clearfix u-sheet u-valign-middle-sm u-sheet-1">
        <h2 class="u-align-left u-text u-text-1">총 <span style="font-weight: 700;" id="countJob">0</span>개의 결과가 있습니다.
        </h2>
        <div class="u-expanded-width u-list u-repeater u-list-1" id="jobDetailBody">
          <!-- 직업 들어가는 div -->
        </div>
      </div>
    </section>
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2994"><div class="u-clearfix u-sheet u-sheet-1">
    	<p class="u-custom-font u-small-text u-text u-text-variant u-text-1">경상북도 포항시 북구 흥해읍 한동로 558 한동대학교 WALAB<br>Copyright ⓒ <b>널주아해</b></p>
      </div>
    </footer>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
  </body>
  
    
</html>