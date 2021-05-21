<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" style="font-size: 16px;">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>home</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/home.css" media="screen">
    
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=NanumGothic:400,700,800"> 

    <title>Wanana</title>
</head>
<body class="u-backlink-hidden u-body">
<jsp:include page="/WEB-INF/views/basic/header.jsp"/>
      
      
    <section class="u-clearfix u-white u-section-1" id="sec-fad6" style="height: 620px; overflow:auto;">
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
              <a onclick="javascript:alert('로그인 후 이용해주세요!')" href="<%=request.getContextPath()%>/login">
              <div class="u-container-layout u-valign-top-lg u-valign-top-md u-valign-top-xl u-valign-top-xs u-container-layout-2">
                <p class="u-align-center u-custom-font u-text u-text-body-alt-color u-text-4" style="padding-left:-200px;">포트폴리오 만들기 바로가기</p>
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