<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en" style="font-size: 16px;">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="REGIST">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>login</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/login.css" media="screen">
   
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
	<meta name="google-signin-client-id" content="301548670560-kv6g6e8emg8kuac082ib4q4eah7hp4qu.apps.googleusercontent.com">
    
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
              <div class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-container-layout-3">
                <div class="u-align-center u-container-style u-group u-radius-19 u-shape-round u-white u-group-2">
                  <div class="u-container-layout u-container-layout-4">
                    <h2 class="u-custom-font u-text u-text-1" style="text-align:center;">회원가입</h2>
                    <div class="u-align-center u-custom-color-1 u-radius-50 u-shape u-shape-round u-shape-1"></div>
                    
                    
       
                    <div class="u-expanded-width-xs u-form u-form-1">
                      <form action="userform" method="post" class="u-clearfix u-form-custom-backend u-form-spacing-15 u-form-vertical u-inner-form" style="padding: 15px;" source="custom" name="form" redirect="true"  onsubmit="return isValidForm()">
                        <div class="u-form-group">
                          <input type="text" id="user_id" name="user_id" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-1" required="required" placeholder="아이디">
                          <span id="id_check" ></span><input id="idValiable" type="hidden" value="">
                        </div>
                        <div class="u-form-group u-form-partition-factor-2">
                          <input type="password" placeholder="비밀번호" id="pwd" name="pwd" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-2" required="required">
                          <span id="pwd_check" ></span>
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-3">
                          <input type="password" placeholder="비밀번호확인" id="re_pwd" name="re_pwd" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-3" required="required">
                           <span id="re_pwd_check" ></span>
                        </div>
                        <div class="u-form-group u-form-group-4">
                          <input type="text" placeholder="이름" id="name" name="name" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-4" required="required">
                        	<span id="name_check" ></span>
                        </div>
                        <div class="u-form-group u-form-select u-form-group-5">
                          <div class="u-form-select-wrapper">
                            <select id="gender" name="gender" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-5" required="required">
                              <option value='M'>남성</option>
                              <option value='W'>여성</option>
                            </select>
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                          </div>
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-6">
                          <input type="text" placeholder="전화번호" id="phone_number" name="phone_number" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-6" required="required">
                        	<span id="phone_check" ></span>
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-7">
                          <input type="email" placeholder="이메일" id="email_address" name="email_address" class="u-border-1 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-19 u-text-grey-40 u-input-7" required="required">
                        </div>
                        <div class="u-align-center u-form-group u-form-submit"  style="text-align:center;">
                          <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-custom-font u-radius-19 u-text-body-alt-color u-btn-1">가 입 </a>
                          <input type="submit" value="submit" class="u-form-control-hidden">
                        </div>
                        <div class="u-form-send-message u-form-send-success"></div>
                        <div class="u-form-send-error u-form-send-message" id="errorMsg" style="margin: 0 auto;"></div>
                        <input type="hidden" value="" name="recaptchaResponse">
                      </form>
                    </div>
                    


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
</html>
