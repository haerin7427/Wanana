<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-3" id="tab-39b8" role="tabpanel" aria-labelledby="link-tab-39b8">
              <div class="u-container-layout u-valign-bottom-md u-valign-bottom-sm u-valign-bottom-xs u-container-layout-18">
                <div class="u-border-2 u-border-grey-5 u-container-style u-expanded-width u-group u-radius-21 u-shape-round u-white u-group-16">
                  <div class="u-container-layout u-container-layout-19">
                    <p class="u-custom-font u-text u-text-custom-color-2 u-text-22">마지막 STEP!</p>
                    <div class="u-align-center-sm u-align-center-xl u-align-center-xs u-border-2 u-border-custom-color-2 u-container-style u-expanded-width-xl u-group u-radius-21 u-shape-round u-group-17">
                      <div class="u-container-layout u-container-layout-20">
                        <p class="u-align-center u-custom-font u-text u-text-23">
                          <span style="font-weight: 700; font-size: 1.25rem;">포트폴리오 이름과 공개여부를 선택해주세요!</span>
                          <br>
                          <span style="font-weight: 700;" class="u-text-grey-60">포트폴리오를 공개해도 연락처는 비공개되니, 안심하세요 :)</span>
                        </p><span class="u-icon u-icon-circle u-text-custom-color-2 u-icon-15"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 515.556 515.556" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-d4b9"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 515.556 515.556" id="svg-d4b9"><path d="m257.778 0-193.334 73.651v184.127c0 147.301 77.334 202.54 193.333 257.778 115.999-55.238 193.333-110.477 193.333-257.778v-184.127c.001 0-193.332-73.651-193.332-73.651zm-32.222 354.445-96.667-96.667 48.333-48.333 49.718 49.718 104.723-104.723 46.949 46.949z"></path></svg></span>
                      </div>
                    </div>
                    <div class="u-form u-form-1">
                      <form action="#" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 10px" source="custom" name="form">
                        <div class="u-form-group u-form-name u-form-partition-factor-2">
                          <label for="name-ba61" class="u-custom-font u-label u-text-grey-75 u-label-1">포트폴리오 이름</label>
                          <input type="text" id="name-ba61" name="1page_pName" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-21 u-white" required="">
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-2">
                          <label for="select-fd8b" class="u-custom-font u-label u-text-grey-75 u-label-2">포트폴리오 공개여부</label>
                          <div class="u-form-select-wrapper">
                            <select id="select-fd8b" name="1page_public" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-21 u-white u-input-2" required="required">
                              <option value="1">공개</option>
                              <option value="0">일부공개 (링크소지자에게만)</option>
                              <option value="0">비공개</option>
                            </select>
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                          </div>
                        </div>
                        <script>
				        	const randomString = Math.random().toString(36).slice(2);
				        </script>
                        <div class="u-form-group">
                          <label for="email-ba61" class="u-custom-font u-label u-text-grey-75 u-label-3">내 포트폴리오 URL</label>
                           <span id="link_dup_txt" style="margin-left: 10px;"></span>
                          <div style="height: 50px;">
	                          <input type="text" id="link" name="url" style="float:left; width:80%;" onfocus="this.value=randomString;" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-21 u-white" style="text-transform:uppsercase;" placeholder="사용할 폼 주소 url을 입력해주세요." required="required">
	                          
	                      </div>
                          
                        </div>
                        <div class="u-align-center u-form-group u-form-submit">
                          <a href="#" class="u-btn u-btn-submit u-button-style u-none u-btn-1">
                            <br>
                          </a>
                          <input type="submit" value="submit" class="u-form-control-hidden">
                        </div>
                        <!-- 
                        <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                        <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                          -->
                        <input type="hidden" value="" name="recaptchaResponse">
                      </form>
                    </div>
                    <img src="<%=request.getContextPath()%>/resources/images/21.png" alt="" class="u-image u-image-default u-image-2" data-image-width="242" data-image-height="275">
                    <p class="u-custom-font u-text u-text-grey-25 u-text-24">이제 아래 <span class="u-text-custom-color-3">저장</span>을 눌러 나만의 포트폴리오를 완성해보세요 !
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>

</body>
</html>