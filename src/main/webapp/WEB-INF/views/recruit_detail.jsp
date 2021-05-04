<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    
    <title>Page 1</title>
    
    
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.6.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <!-- jQuery -->
  	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css?ver=1" media="screen">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nicepage/recruit_detail.css?ver=1" media="screen">

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
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/portfolio_board" style="padding: 10px 20px;">Portfolio구경가기</a>
				</li>
				<li class="u-nav-item">
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/recruit_info" style="padding: 10px 20px;">직업탐색</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black" href="<%=request.getContextPath()%>/myPage" style="padding: 10px 20px;">MY페이지</a>
				</li>
				<c:set var="admin" value="${admin }" />
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
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                	<li class="u-nav-item">
                		<a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/portfolio_board" style="padding: 10px 20px;">Portfolio구경가기</a>
					</li>
					<li class="u-nav-item">
                		<a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/recruit_info" style="padding: 10px 20px;">직업탐색</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/myPage" style="padding: 10px 20px;">MY페이지</a>
					</li>
					<c:set var="admin" value="${admin}" />
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
        </nav>
        <p class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-custom-font u-enable-responsive u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-palette-1-base u-btn-1" href="home.html" data-page-id="425530424">
            <span class="u-text-custom-color-1">One</span>
            <span class="u-text-black">하나</span>
          </a>
        </p>
      </div></header>
  
    <section class="u-align-center u-clearfix u-section-1" id="sec-920a">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-expanded-width u-group u-palette-3-light-2 u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <img src="images/colorful-delicious-vegetables-arrangement_23-2148290786.jpg" alt="" class="u-image u-image-default u-image-1" data-image-width="626" data-image-height="417">
            <h1 class="u-align-center u-text u-text-1 jobName" style="text-align: center;">웹프로그래머</h1>
            <h4 class="u-align-center u-text u-text-2 jobContent" style="text-align: center;">웹상에서 각종 자료들을 보여줄 수 있도록 웹 프로그래밍 언어를 사용하여 ~~</h4>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="sec-3cb9">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-width u-tabs u-tabs-1">
          <ul class="u-border-1 u-border-grey-25 u-tab-list u-unstyled" role="tablist">
            <li class="u-tab-item" role="presentation">
              <a class="active u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-1" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="true">요약하기</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-2" id="link-tab-2917" href="#tab-2917" role="tab" aria-controls="tab-2917" aria-selected="false">하는 일</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-3" id="link-tab-4d4d" href="#tab-4d4d" role="tab" aria-controls="tab-4d4d" aria-selected="false">교육/자격/훈련</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-4" id="link-tab-ba13" href="#tab-ba13" role="tab" aria-controls="tab-ba13" aria-selected="false">임금/직업만족도/전망</a>
            </li>
            <li class="u-tab-item u-tab-item-5" role="presentation">
              <a class="u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-5" id="link-tab-2f82" href="#tab-2f82" role="tab" aria-controls="tab-2f82" aria-selected="false">능력/지식/환경</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-6" id="link-tab-f5ab" href="#tab-f5ab" role="tab" aria-controls="tab-f5ab" aria-selected="false">성격/흥미/가치관</a>
            </li>
            <li class="u-tab-item u-tab-item-7" role="presentation">
              <a class="u-active-white u-border-2 u-border-active-grey-15 u-border-hover-grey-15 u-border-no-bottom u-button-style u-tab-link u-text-active-palette-2-base u-text-hover-black u-tab-link-7" id="link-tab-1dcf" href="#tab-1dcf" role="tab" aria-controls="tab-1dcf" aria-selected="false">업무활동</a>
            </li>
          </ul>
          <div class="u-tab-content">
            <div class="u-align-center u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
              <div class="u-container-layout u-valign-middle u-container-layout-1">
                <div class="firstRow u-expanded-width u-table u-table-responsive u-table-1">
                  <table class="u-table-entity">
                    <colgroup>
                      <col width="20.2%">
                      <col width="29.8%">
                      <col width="25%">
                      <col width="25%">
                    </colgroup>
                    <tbody class="u-table-body">
                      <tr style="height: 72px;">
                        <td class="u-align-center u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-1">되는 길</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                      </tr>
                      <tr style="height: 72px;">
                        <td class="u-align-center u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-1">교육/자격/훈련</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-5">Row 3</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-9">Row 4</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-13"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-17"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-21"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-25"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-29"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-33"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-37"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-41"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                      <tr style="height: 74px;">
                        <td class="u-border-1 u-border-grey-30 u-grey-5 u-table-cell u-table-cell-45"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="u-container-style u-tab-pane u-white u-tab-pane-2" id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
              <div class="u-container-layout u-container-layout-2">
                <blockquote class="u-align-center u-text u-text-1">Sample quote. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices.</blockquote>
                <p class="u-align-center u-text u-text-2">Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of
                disruptive innovation.</p>
                <div class="u-video u-video-contain u-video-1">
                  <div style=" position: absolute;" class="embed-responsive">
                    <iframe style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" class="embed-responsive-item" src="https://www.youtube.com/embed/B9YKnNtFqds?mute=0&amp;showinfo=0&amp;controls=0&amp;start=0" frameborder="0" allowfullscreen=""></iframe>
                  </div>
                </div>
                <h3 class="u-text u-text-3">&lt;관련 직업&gt;</h3>
                <div class="u-align-center u-border-3 u-border-palette-1-base u-container-style u-group u-group-1">
                  <div class="u-container-layout u-container-layout-3"></div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-tab-pane u-white u-tab-pane-3" id="tab-4d4d" role="tabpanel" aria-labelledby="link-tab-4d4d">
              <div class="u-container-layout u-container-layout-4">
                <div class="u-align-center u-border-3 u-border-grey-40 u-container-style u-group u-group-2">
                  <div class="u-container-layout u-valign-middle u-container-layout-5">
                    <h4 class="u-align-center u-text u-text-4">When it absolutely, positively has to be readability in your designs</h4>
                  </div>
                </div>
                <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-group-3">
                  <div class="u-container-layout u-container-layout-6"></div>
                </div>
                <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-group-4">
                  <div class="u-container-layout u-container-layout-7"></div>
                </div>
                <h3 class="u-text u-text-5">&lt;관련 직업&gt;</h3>
                <div class="u-border-3 u-border-palette-1-base u-container-style u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-group-5">
                  <div class="u-container-layout u-container-layout-8"></div>
                </div>
                <div class="fr-view u-align-center u-clearfix u-rich-text u-text u-text-6">
                  <h2 style="text-align: left;">
                    <span style="line-height: 2.0;">Sample Headline</span>
                  </h2>
                  <p style="text-align: left;">
                    <span style="line-height: 2.0;">Sample text. Click to select the text box. Click again or double click to start editing the text. Dictum non consectetur a erat nam at. Aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Tellus mauris a diam maecenas sed enim ut sem. Ipsum faucibus vitae aliquet nec ullamcorper sit amet. &nbsp;</span>
                  </p>
                  <h2 style="text-align: left;">
                    <span style="line-height: 2.0;">Sample Headline</span>
                  </h2>
                  <p style="text-align: left;">
                    <span style="line-height: 2.0;">Euismod in pellentesque massa placerat. Risus quis varius quam quisque. Fermentum leo vel orci porta non pulvinar neque. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae. Viverra aliquet eget sit amet. Platea dictumst vestibulum rhoncus est.</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="u-container-style u-tab-pane u-white u-tab-pane-4" id="tab-ba13" role="tabpanel" aria-labelledby="link-tab-ba13">
              <div class="u-container-layout u-valign-top-sm u-valign-top-xs u-container-layout-9">
                <div class="u-align-center u-expanded-width-sm u-expanded-width-xs u-table u-table-responsive u-table-2">
                  <table class="u-table-entity">
                    <colgroup>
                      <col width="18.5%">
                      <col width="81.5%">
                    </colgroup>
                    <tbody class="u-table-body">
                      <tr style="height: 75px;">
                        <td class="u-align-center u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-49">임금</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                      </tr>
                      <tr style="height: 76px;">
                        <td class="u-align-center u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-51">직업만족도</td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                      </tr>
                      <tr style="height: 72px;">
                        <td class="u-align-center u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-53">전망<span style="font-weight: 700;"></span>
                        </td>
                        <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <h4 class="u-text u-text-7">&lt;일자리 현황&gt;</h4>
                <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-group-6">
                  <div class="u-container-layout u-container-layout-10"></div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-tab-pane u-white u-tab-pane-5" id="tab-2f82" role="tabpanel" aria-labelledby="link-tab-2f82">
              <div class="u-container-layout u-container-layout-11">
                <div class="u-accordion u-expanded-width u-accordion-1">
                  <div class="u-accordion-item">
                    <a class="active u-accordion-link u-border-1 u-border-active-grey-25 u-border-grey-30 u-border-hover-grey-30 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-active-palette-1-base u-text-black u-text-hover-palette-1-base u-accordion-link-1" id="link-accordion-7c0e" aria-controls="accordion-7c0e" aria-selected="true">능력</a>
                    <div class="u-accordion-active u-accordion-pane u-align-center u-container-style u-expanded-width u-accordion-pane-1" id="accordion-7c0e" aria-labelledby="link-accordion-7c0e">
                      <div class="u-container-layout u-container-layout-12">
                        <div class="u-expanded-width u-table u-table-responsive u-table-3">
                          <table class="u-table-entity">
                            <colgroup>
                              <col width="20.5%">
                              <col width="10.4%">
                              <col width="69.1%">
                            </colgroup>
                            <thead class="u-palette-4-base u-table-header u-table-header-1">
                              <tr style="height: 57px;">
                                <th class="u-grey-5 u-table-cell u-table-cell-55"></th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-56">중요도</th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-57">업무수행능력 설명</th>
                              </tr>
                            </thead>
                            <tbody class="u-table-body">
                              <tr style="height: 71px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-58">업무수행능력 중요도</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-61">업무수행능력 수준</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-64">지식중요도</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-67">Row 4</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="u-accordion-item">
                    <a class="u-accordion-link u-border-1 u-border-active-grey-25 u-border-grey-30 u-border-hover-grey-30 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-active-palette-1-base u-text-black u-text-hover-palette-1-base u-accordion-link-2" id="link-accordion-05cb" aria-controls="accordion-05cb" aria-selected="false"> 지식</a>
                    <div class="u-accordion-pane u-align-center u-container-style u-expanded-width u-accordion-pane-2" id="accordion-05cb" aria-labelledby="link-accordion-05cb">
                      <div class="u-container-layout u-valign-bottom-lg u-valign-bottom-md u-valign-top-sm u-valign-top-xs u-container-layout-13">
                        <div class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xl u-table u-table-responsive u-table-4">
                          <table class="u-table-entity">
                            <colgroup>
                              <col width="19.6%">
                              <col width="10.4%">
                              <col width="70%">
                            </colgroup>
                            <thead class="u-palette-4-base u-table-header u-table-header-2">
                              <tr style="height: 59px;">
                                <th class="u-grey-5 u-table-cell u-table-cell-70"></th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-71">중요도</th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-72">지식 설명</th>
                              </tr>
                            </thead>
                            <tbody class="u-table-body">
                              <tr style="height: 73px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-73">Row 1</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 80px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-76">Row 2</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-79">Row 3</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-82">Row 4</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="u-accordion-item">
                    <a class="u-accordion-link u-border-1 u-border-active-grey-25 u-border-grey-30 u-border-hover-grey-30 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-active-palette-1-base u-text-black u-text-hover-palette-1-base u-accordion-link-3" id="link-accordion-a6bb" aria-controls="accordion-a6bb" aria-selected="false"> 환경</a>
                    <div class="u-accordion-pane u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-expanded-width u-accordion-pane-3" id="accordion-a6bb" aria-labelledby="link-accordion-a6bb">
                      <div class="u-container-layout u-container-layout-14">
                        <div class="u-expanded-width u-table u-table-responsive u-table-5">
                          <table class="u-table-entity">
                            <colgroup>
                              <col width="19.6%">
                              <col width="10.4%">
                              <col width="70%">
                            </colgroup>
                            <thead class="u-palette-4-base u-table-header u-table-header-3">
                              <tr style="height: 57px;">
                                <th class="u-grey-5 u-table-cell u-table-cell-85"></th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-86">중요도</th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-87">환경 설명</th>
                              </tr>
                            </thead>
                            <tbody class="u-table-body">
                              <tr style="height: 71px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-88">Row 1</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-91">Row 2</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-94">Row 3</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-97">Row 4</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-tab-pane u-white u-tab-pane-6" id="tab-f5ab" role="tabpanel" aria-labelledby="link-tab-f5ab">
              <div class="u-container-layout u-container-layout-15">
                <div class="u-accordion u-expanded-width u-accordion-2">
                  <div class="u-accordion-item">
                    <a class="active u-accordion-link u-border-1 u-border-active-grey-25 u-border-grey-30 u-border-hover-grey-30 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-active-palette-1-base u-text-black u-text-hover-palette-1-base u-accordion-link-4" id="link-accordion-7c0e" aria-controls="accordion-7c0e" aria-selected="true"> 성격</a>
                    <div class="u-accordion-active u-accordion-pane u-align-left u-container-style u-expanded-width u-accordion-pane-4" id="accordion-7c0e" aria-labelledby="link-accordion-7c0e">
                      <div class="u-container-layout u-container-layout-16">
                        <div class="u-expanded-width u-table u-table-responsive u-table-6">
                          <table class="u-table-entity">
                            <colgroup>
                              <col width="19.6%">
                              <col width="10.4%">
                              <col width="70%">
                            </colgroup>
                            <thead class="u-palette-4-base u-table-header u-table-header-4">
                              <tr style="height: 57px;">
                                <th class="u-grey-5 u-table-cell u-table-cell-100"></th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-101">중요도</th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-102">지식 설명</th>
                              </tr>
                            </thead>
                            <tbody class="u-table-body">
                              <tr style="height: 71px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-103">Row 1</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-106">Row 2</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-109">Row 3</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-112">Row 4</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="u-accordion-item">
                    <a class="u-accordion-link u-border-1 u-border-active-grey-25 u-border-grey-30 u-border-hover-grey-30 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-active-palette-1-base u-text-black u-text-hover-palette-1-base u-accordion-link-5" id="link-accordion-05cb" aria-controls="accordion-05cb" aria-selected="false"> 흥미</a>
                    <div class="u-accordion-pane u-align-left u-container-style u-expanded-width u-accordion-pane-5" id="accordion-05cb" aria-labelledby="link-accordion-05cb">
                      <div class="u-container-layout u-container-layout-17">
                        <div class="u-expanded-width u-table u-table-responsive u-table-7">
                          <table class="u-table-entity">
                            <colgroup>
                              <col width="19.6%">
                              <col width="10.4%">
                              <col width="70%">
                            </colgroup>
                            <thead class="u-palette-4-base u-table-header u-table-header-5">
                              <tr style="height: 57px;">
                                <th class="u-grey-5 u-table-cell u-table-cell-115"></th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-116">중요도</th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-117">지식 설명</th>
                              </tr>
                            </thead>
                            <tbody class="u-table-body">
                              <tr style="height: 71px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-118">Row 1</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-121">Row 2</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-124">Row 3</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-127">Row 4</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="u-accordion-item">
                    <a class="u-accordion-link u-border-1 u-border-active-grey-25 u-border-grey-30 u-border-hover-grey-30 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-active-palette-1-base u-text-black u-text-hover-palette-1-base u-accordion-link-6" id="link-accordion-a6bb" aria-controls="accordion-a6bb" aria-selected="false">가치관</a>
                    <div class="u-accordion-pane u-align-left u-container-style u-expanded-width u-accordion-pane-6" id="accordion-a6bb" aria-labelledby="link-accordion-a6bb">
                      <div class="u-container-layout u-container-layout-18">
                        <div class="u-expanded-width u-table u-table-responsive u-table-8">
                          <table class="u-table-entity">
                            <colgroup>
                              <col width="19.6%">
                              <col width="10.4%">
                              <col width="70%">
                            </colgroup>
                            <thead class="u-palette-4-base u-table-header u-table-header-6">
                              <tr style="height: 57px;">
                                <th class="u-grey-5 u-table-cell u-table-cell-130"></th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-131">중요도</th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-132">지식 설명</th>
                              </tr>
                            </thead>
                            <tbody class="u-table-body">
                              <tr style="height: 71px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-133">Row 1</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-136">Row 2</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-139">Row 3</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-142">Row 4</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-tab-pane u-white u-tab-pane-7" id="tab-1dcf" role="tabpanel" aria-labelledby="link-tab-1dcf">
              <div class="u-container-layout u-container-layout-19">
                <div class="u-accordion u-expanded-width u-accordion-3">
                  <div class="u-accordion-item">
                    <a class="active u-accordion-link u-border-1 u-border-active-grey-25 u-border-grey-30 u-border-hover-grey-30 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-active-palette-1-base u-text-black u-text-hover-palette-1-base u-accordion-link-7" id="link-accordion-05cb" aria-controls="accordion-05cb" aria-selected="true"> 업무활동 중요도</a>
                    <div class="u-accordion-active u-accordion-pane u-align-left u-container-style u-expanded-width u-accordion-pane-7" id="accordion-05cb" aria-labelledby="link-accordion-05cb">
                      <div class="u-container-layout u-container-layout-20">
                        <div class="u-expanded-width u-table u-table-responsive u-table-9">
                          <table class="u-table-entity">
                            <colgroup>
                              <col width="19.6%">
                              <col width="10.4%">
                              <col width="70%">
                            </colgroup>
                            <thead class="u-palette-4-base u-table-header u-table-header-7">
                              <tr style="height: 57px;">
                                <th class="u-grey-5 u-table-cell u-table-cell-145"></th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-146">중요도</th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-147">지식 설명</th>
                              </tr>
                            </thead>
                            <tbody class="u-table-body">
                              <tr style="height: 71px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-148">Row 1</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-151">Row 2</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-154">Row 3</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-157">Row 4</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="u-accordion-item">
                    <a class="u-accordion-link u-border-1 u-border-active-grey-25 u-border-grey-30 u-border-hover-grey-30 u-border-no-left u-border-no-right u-border-no-top u-button-style u-text-active-palette-1-base u-text-black u-text-hover-palette-1-base u-accordion-link-8" id="link-accordion-a6bb" aria-controls="accordion-a6bb" aria-selected="false">업무활동 수준</a>
                    <div class="u-accordion-pane u-align-left u-container-style u-expanded-width u-accordion-pane-8" id="accordion-a6bb" aria-labelledby="link-accordion-a6bb">
                      <div class="u-container-layout u-container-layout-21">
                        <div class="u-expanded-width u-table u-table-responsive u-table-10">
                          <table class="u-table-entity">
                            <colgroup>
                              <col width="19.6%">
                              <col width="10.4%">
                              <col width="70%">
                            </colgroup>
                            <thead class="u-palette-4-base u-table-header u-table-header-8">
                              <tr style="height: 57px;">
                                <th class="u-grey-5 u-table-cell u-table-cell-160"></th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-161">중요도</th>
                                <th class="u-align-center u-grey-5 u-table-cell u-table-cell-162">지식 설명</th>
                              </tr>
                            </thead>
                            <tbody class="u-table-body">
                              <tr style="height: 71px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-163">Row 1</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 78px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-166">Row 2</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-169">Row 3</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                              <tr style="height: 76px;">
                                <td class="u-border-1 u-border-grey-30 u-first-column u-grey-5 u-table-cell u-table-cell-172">Row 4</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                                <td class="u-border-1 u-border-grey-30 u-table-cell">Description</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-2994">
    	<div class="u-clearfix u-sheet u-sheet-1" style="margin-top:-10px; margin-bottom:-6px;">
       		<p class="u-custom-font u-small-text u-text u-text-variant u-text-1" style="line-height:20px;">경상북도 포항시 북구 흥해읍 한동로 558 한동대학교 WALAB<br>Copyright ⓒ <b>널주아해</b></p>
      	</div>
     </footer>
    
  </body>
</html>