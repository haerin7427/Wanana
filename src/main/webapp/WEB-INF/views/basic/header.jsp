<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
</head>
<body><header class="u-clearfix u-header u-header" id="sec-bbf7"><div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1" style="float: none !important;">
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
            <li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/portfolio_board" style="padding: 10px 20px;">Portfolio구경가기</a>
			</li>
			<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/recruit_info" style="padding: 10px 20px;">직업탐색</a>
			</li>
			<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/myPage" style="padding: 10px 20px;">MY페이지</a>
			</li>
			<c:set var="admin" value="${admin }" />
			<c:if test="${admin == 1}">
			<li class="u-nav-item">
			<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>	
			</li>
			</c:if>
			<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>	
			</li>
			</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/portfolio_board" style="padding: 10px 20px;">Portfolio구경가기</a>
</li>
<li class="u-nav-item"><a class="u-button-style u-nav-link" href="#" onclick="javascript:alert('준비 중인 서비스 입니다!')" style="padding: 10px 20px;">직업탐색</a>
</li>
<li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/myPage" style="padding: 10px 20px;">MY페이지</a>
</li>
<c:set var="admin" value="${admin}" />
<c:if test="${admin == 1}">
<li class="u-nav-item">
<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>
</li>
</c:if>
<li class="u-nav-item"><a class="u-button-style u-nav-link"  style="padding: 10px 20px; cursor:pointer;" href="<%=request.getContextPath()%>/logout">로그아웃</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="<%=request.getContextPath()%>/" data-page-id="425530424">
            <span class="u-text-custom-color-1">One</span>
            <span class="u-text-black">하나</span>
          </a>
        </p>
      </div></header>
</body>
</html>