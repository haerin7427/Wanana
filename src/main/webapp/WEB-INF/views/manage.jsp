<!--템플릿 jsp에 개인정보를 집어넣은 페이지-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
  
  	<!-- jQuery -->  	
  	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="LOGIN">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>관리자페이지</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index.css">
	<link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nicepage/nicepage.css" media="screen">
  
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="<%=request.getContextPath()%>/resources/js/nicepage/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.3.7, nicepage.com">
    
    <style>
    	*{
			box-sizing: border-box;
			list-style: none;
		}
    
    	.table-content {
		  display: flex;
		  flex-direction: row;
		}
		
		.item {
		  flex: 1;
		}
		
		body{
			background: #f5f5f5;
		}
		
		.sidebar{
			position: fixed;
			top: 140px;
			left: 0;
			width: 250px;
			height: 40%;
			background: #E1C058;
			margin-left:140px;
			font-family: NanumGothic;
			font-weight: bold;
		}
		
		.sidebar ul li a{
			display: block;
			padding: 12px 25px;
			border-bottom: 1px solid #DDA710;
			color: #0e94d4;
			transition: all 0.2s ease;
		}
		
		.sidebar ul li a .icon{
			font-size: 18px;
			vertical-align: middle;
			transition: background 0.2s ease;
		}
		
		.sidebar ul li a .text{
			margin-left: 10px;
			color: #fff;
			text-transform: uppercase;
			letter-spacing: 2px;
		}
		
		.sidebar ul li a:hover{
			background: #DDA710;
			color: black;
		}
		
		
		.main_container{
			height:570px;
			overflow:auto;
			margin-top: 0px;
			margin-left: 210px;
			padding-left: 25px;
			width: calc(100% - 170px);
		}
		
		.main_container .content{
			background: #fff;
			padding: 25px;
			margin-bottom: 25px;
			text-align: justify;
		}
		
		
    </style>
    
  </head>

<body class="u-body">
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
                		<a class="u-button-style u-nav-link maker"  style="padding: 10px 20px;"  href="<%=request.getContextPath()%>/portfolio_board">Porfolio구경가기</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY페이지</a>
					</li>
					<li class="u-nav-item">
						<a class="u-button-style u-nav-link"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>
					</li>
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
            		<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/portfolio_board"">Porfolio구경가기</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/myPage">MY페이지</a>	
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-grey-40 u-text-hover-black"  style="padding: 10px 20px;" href="<%=request.getContextPath()%>/manage">관리자페이지</a>	
				</li>
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
	
	 <section class="u-clearfix u-white u-section-1" id="sec-fad6" style="height:100%;">
	 	<div class="wrapper hover_collapse">
			
		
			<div class="sidebar">
				<div class="sidebar_inner">
				<ul>
					<li>
						<a href="#">
							<span class="text">회원정보</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="text">관리자계정</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="text">공지사항</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="text">고객문의</span>
						</a>
					</li>
				</ul>
				</div>
			</div>
		
			<div class="main_container">
				<div style="border-bottom: 1px solid #DDA710;">
					<h4>회원정보</h4>
				</div>
				<div style="padding: 10px 0 10px 0; font-weight:bold;">
					총 회원 수 : 4명 
				</div>
				<section class="u-align-center u-clearfix u-section-3" id="sec-6f13"  style="overflow:hidden;">
			      <div class="u-clearfix u-sheet u-sheet-1" style="overflow:hidden;">
			        <div class="u-table u-table-responsive u-table-1"  style="overflow:hidden;">
			          <table class="u-table-entity u-table-entity-1" style="overflow:hidden;">

			            <thead class="u-grey-50 u-table-header u-table-header-1" style="font-size:12px;">
			              <tr style="height: 36px;">
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 80px;"></th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 120px;">이름</th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 150px;">번호</th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 240px;">이메일</th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell" style="width: 100px;">포트폴리오 수</th>
			                <th class="u-border-1 u-border-grey-50 u-table-cell">강제탈퇴</th>
			              </tr>
			            </thead>
			            <tbody class="u-table-body u-table-body-1">
			              <tr style="height: 33px;">
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">1</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">이주연</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">010-xxxx-xxxx</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">217*****@handong.edu</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">0</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell"><a>탈퇴</a></td>
			              </tr>
			              <tr style="height: 33px;">
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">2</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">서인아</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">010-xxxx-xxxx</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">217*****@handong.edu</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">3</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell"><a>탈퇴</a></td>
			              </tr>
			              <tr style="height: 33px;">
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">3</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">김해린</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">010-xxxx-xxxx</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">217*****@handong.edu</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">2</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell"><a>탈퇴</a></td>
			              </tr>
			              <tr style="height: 33px;">
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">4</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">김광</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">010-xxxx-xxxx</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">217*****@handong.edu</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell">1</td>
			                <td class="u-border-1 u-border-grey-40 u-border-no-left u-border-no-right u-table-cell"><a>탈퇴</a></td>
			              </tr>
			            </tbody>
			          </table>
			        </div>
			      </div>
			    </section>
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