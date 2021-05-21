<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" style="font-size: 16px;">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="LOGIN">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>login</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/login.css" media="screen">
	<meta name="generator" content="Nicepage 3.3.7, nicepage.com">
    
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
	<meta name="google-signin-client-id" content="301548670560-kv6g6e8emg8kuac082ib4q4eah7hp4qu.apps.googleusercontent.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=NanumGothic:400,700,800">    
    

    <title>Wanana</title>
</head>

<body class="u-body">
<jsp:include page="/WEB-INF/views/basic/header.jsp"/>
    <section class="u-clearfix u-valign-middle-xl u-section-1" id="sec-32ab">
      <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
        <div class="u-layout" style="">
          <div class="u-layout-row" style="">
            <div class="u-align-left u-container-style u-custom-color-1 u-layout-cell u-left-cell u-opacity u-opacity-70 u-size-21 u-size-xs-60 u-layout-cell-1" src="">
              <div class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-valign-middle-xs u-valign-top-sm u-container-layout-1" src="">
                <div class="u-container-style u-group u-image u-radius-28 u-shape-round u-image-1" data-image-width="472" data-image-height="725">
                  <div class="u-container-layout u-container-layout-2">
                    <p class="u-align-left-lg u-align-left-xl u-custom-font u-text u-text-custom-color-2 u-text-1">WELCOME</p>
                    <p class="u-custom-font u-text u-text-grey-50 u-text-2">환영합니다!</p>
                    <img class="u-image u-image-default u-image-2" data-image-width="242" data-image-height="275" src="<%=request.getContextPath()%>/resources/images/21.png">
                    <img class="u-align-center-lg u-align-center-xl u-image u-image-default u-preserve-proportions u-image-3" data-image-width="172" data-image-height="43" src="<%=request.getContextPath()%>/resources/images/291.png">
                  </div>
                </div>
              </div>
            </div>
            
            <div class="u-align-left u-container-style u-grey-5 u-layout-cell u-right-cell u-size-39 u-size-xs-60 u-layout-cell-2">
              <div class="u-container-layout u-valign-middle u-container-layout-3">
              	
	           
                <div class="u-align-center u-container-style u-group u-radius-19 u-shape-round u-white u-group-2">
                  <div class="u-container-layout u-container-layout-4">
	           <div class="no_login" style="color:red;text-align: center;"><%=request.getAttribute("no_login")%></div>
                    <h2 class="u-custom-font u-text u-text-3" style="text-align: center;">LOGIN</h2>
                    <div class="u-align-center u-custom-color-1 u-radius-50 u-shape u-shape-round u-shape-1"></div>
                    <p class="u-align-center u-custom-font u-text u-text-grey-50 u-text-4">회원전용서비스로 로그인이 필요합니다.</p>
                    <a style="cursor:pointer;" href="<%=request.getContextPath()%>/login/redirectUrl">
	                    <div class="u-border-2 u-border-grey-30 u-container-style u-group u-radius-21 u-shape-round u-white u-group-3">
	                      <div class="u-container-layout u-valign-top-xl u-container-layout-5" id="googleLoginBtn">
	                      <span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1">
	                      <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style="">
	                      	<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e606"></use>
	                      </svg>
	                      <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-e606" style="enable-background:new 0 0 512 512;">
	                      	<path style="fill:#FBBB00;" d="M113.47,309.408L95.648,375.94l-65.139,1.378C11.042,341.211,0,299.9,0,256  c0-42.451,10.324-82.483,28.624-117.732h0.014l57.992,10.632l25.404,57.644c-5.317,15.501-8.215,32.141-8.215,49.456  C103.821,274.792,107.225,292.797,113.47,309.408z"></path>
	                      	<path style="fill:#518EF8;" d="M507.527,208.176C510.467,223.662,512,239.655,512,256c0,18.328-1.927,36.206-5.598,53.451  c-12.462,58.683-45.025,109.925-90.134,146.187l-0.014-0.014l-73.044-3.727l-10.338-64.535  c29.932-17.554,53.324-45.025,65.646-77.911h-136.89V208.176h138.887L507.527,208.176L507.527,208.176z"></path>
	                      	<path style="fill:#28B446;" d="M416.253,455.624l0.014,0.014C372.396,490.901,316.666,512,256,512  c-97.491,0-182.252-54.491-225.491-134.681l82.961-67.91c21.619,57.698,77.278,98.771,142.53,98.771  c28.047,0,54.323-7.582,76.87-20.818L416.253,455.624z"></path>
	                      	<path style="fill:#F14336;" d="M419.404,58.936l-82.933,67.896c-23.335-14.586-50.919-23.012-80.471-23.012  c-66.729,0-123.429,42.957-143.965,102.724l-83.397-68.276h-0.014C71.23,56.123,157.06,0,256,0  C318.115,0,375.068,22.126,419.404,58.936z"></path>
	                      </svg>
	                      </span>
	                      	<div  style="cursor: pointer">
	                        	<p class="u-text u-text-default u-text-grey-60 u-text-5">google 로그인</p>
	                        </div>
	                        
							
	                      </div>
	                    </div>
                    </a>
                         
                    <div class="u-expanded-width-xs u-form u-form-1">
                      <form action="login/loginProcess" method="post" class="u-clearfix u-form-spacing-15 u-form-vertical u-inner-form" style="padding: 15px;" name="form">
	                        <div class="u-form-group">
	                          <input type="text" id="user_id" name="user_id" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-1" required="required" placeholder="아이디">
	                        </div>
	                        <div class="u-form-group">
	                          <input type="password" placeholder="비밀번호" id="pwd" name="pwd" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-2" required="required">
	                        </div>
	                        <div class="u-align-center u-form-group u-form-submit" style="display: flex;justify-content: center;">
	                          <button type="submit" value="submit" class="u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-custom-font u-radius-19 u-text-body-alt-color u-btn-1">로그인</button>
	                        </div>
	                        <input type="hidden" value="" name="recaptchaResponse">
                      </form>
                    </div>
                    <p class="u-custom-font u-text u-text-default u-text-grey-40 u-text-6">
                      <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-grey-40 u-btn-2" href="<%=request.getContextPath()%>/userform" data-page-id="18031062">아직 회원이 아니신가요?</a>
                    </p>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <jsp:include page="/WEB-INF/views/basic/footer.jsp"/>
    <section class="u-backlink u-clearfix u-grey-80">
    </section>
  </body>