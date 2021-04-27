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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/recruit_home.css" media="screen">
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js"></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js"></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jobData.js?ver=13"></script>
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
      <div class="u-clearfix u-sheet u-valign-bottom-xs u-valign-middle-xl u-sheet-1">
        <div class="u-container-style u-expanded-width u-group u-palette-1-light-3 u-group-1">
          <div class="u-container-layout u-valign-bottom-md u-valign-bottom-sm u-valign-bottom-xs u-container-layout-1">
            <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-2">
              <div class="u-container-layout u-container-layout-2">
                <h2 class="u-text u-text-default u-text-1">분류별 찾기</h2>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-border-2 u-border-palette-1-light-3 u-container-style u-group u-group-3" style="overflow:auto;">
              <div class="u-container-layout u-container-layout-3">
                <div class="u-expanded-width-xl u-table u-table-responsive u-table-1">
                  <table class="u-table-entity">
                    <colgroup>
                      <col width="100%">
                    </colgroup>
                    <tbody class="u-table-body" id="jobListTBody">
                      <!-- job분류 리스트 -->
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-border-2 u-border-palette-1-light-3 u-container-style u-expanded-width-sm u-expanded-width-xs u-group u-group-4">
              <div class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-4">
                <div class="u-expanded-width u-table u-table-responsive u-table-2">
                  <table class="u-table-entity">
                    <colgroup>
                      <col width="100%">
                    </colgroup>
                    <thead class="u-table-header">
                      <tr style="height: 67px;">
                        <th class="u-align-center u-border-2 u-border-palette-1-light-3 u-table-cell u-white u-table-cell-7" style="text-align: center;">직업분류 2차 선택</th>
                      </tr>
                    </thead>
                    <tbody class="u-table-body" id="jobDetailTBody">
                      <tr style="height: 47px;">
                        <td class="u-table-cell u-white u-table-cell-8"></td>
                      </tr>
                      <tr style="height: 51px;">
                        <td class="u-table-cell u-white u-table-cell-9"></td>
                      </tr>
                      <tr style="height: 65px;">
                        <td class="u-table-cell u-white u-table-cell-10"></td>
                      </tr>
                      <tr style="height: 67px;">
                        <td class="u-table-cell u-white u-table-cell-11"></td>
                      </tr>
                      <tr style="height: 67px;">
                        <td class="u-table-cell u-white u-table-cell-12"></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="carousel_400e">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-sm u-sheet-1">
        <h2 class="u-align-left u-text u-text-1">총 <span style="font-weight: 700;">15</span>개의 결과가 있습니다.
        </h2>
        <div class="u-expanded-width u-list u-repeater u-list-1">
          <div class="u-align-center-xs u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-1">
              <div class="u-align-left u-border-2 u-border-palette-5-light-2 u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-group-1">
                <div class="u-container-layout u-container-layout-2">
                  <h4 class="u-text u-text-default u-text-palette-3-base u-text-2">Sample Headline</h4>
                  <a href="#" class="u-btn u-btn-round u-button-style u-hover-palette-3-light-3 u-palette-5-light-2 u-radius-6 u-btn-1">클라우드 컴퓨팅 개발자</a>
                </div>
              </div>
            </div>
          </div>
          <div class="u-align-center-xs u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-3">
              <div class="u-align-left u-border-2 u-border-palette-5-light-2 u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-video-cover u-group-2">
                <div class="u-container-layout u-container-layout-4">
                  <h4 class="u-text u-text-default u-text-palette-3-base u-text-3">Sample Headline</h4>
                  <a href="#" class="u-btn u-btn-round u-button-style u-hover-palette-3-light-3 u-palette-5-light-2 u-radius-6 u-btn-2">Button</a>
                </div>
              </div>
            </div>
          </div>
          <div class="u-align-center-xs u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-5">
              <div class="u-align-left u-border-2 u-border-palette-5-light-2 u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-video-cover u-group-3">
                <div class="u-container-layout u-container-layout-6">
                  <h4 class="u-text u-text-default u-text-palette-3-base u-text-4">Sample Headline</h4>
                  <a href="#" class="u-btn u-btn-round u-button-style u-hover-palette-3-light-3 u-palette-5-light-2 u-radius-6 u-btn-3">Button</a>
                </div>
              </div>
            </div>
          </div>
          <div class="u-align-center-xs u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-7">
              <div class="u-align-left u-border-2 u-border-palette-5-light-2 u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-video-cover u-group-4">
                <div class="u-container-layout u-container-layout-8">
                  <h4 class="u-text u-text-default u-text-palette-3-base u-text-5">Sample Headline</h4>
                  <a href="#" class="u-btn u-btn-round u-button-style u-hover-palette-3-light-3 u-palette-5-light-2 u-radius-6 u-btn-4">Button</a>
                </div>
              </div>
            </div>
          </div>
          <div class="u-align-center-xs u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-container-layout-9">
              <div class="u-align-left u-border-2 u-border-palette-5-light-2 u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-video-cover u-group-5">
                <div class="u-container-layout u-container-layout-10">
                  <h4 class="u-text u-text-default u-text-palette-3-base u-text-6">Sample Headline</h4>
                  <a href="#" class="u-btn u-btn-round u-button-style u-hover-palette-3-light-3 u-palette-5-light-2 u-radius-6 u-btn-5">Button</a>
                </div>
              </div>
            </div>
          </div>
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